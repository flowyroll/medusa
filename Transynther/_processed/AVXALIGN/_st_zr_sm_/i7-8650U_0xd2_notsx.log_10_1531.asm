.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x12c18, %rdi
and $28691, %r8
movb $0x61, (%rdi)
add %rdx, %rdx
lea addresses_D_ht+0x12b90, %r9
nop
nop
nop
cmp $23390, %r13
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x9b18, %r13
nop
nop
nop
nop
nop
dec %rcx
mov (%r13), %edx
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x5218, %rdi
nop
xor $14088, %rdx
movl $0x61626364, (%rdi)
nop
sub $4223, %rcx
lea addresses_WC_ht+0x16c38, %r13
nop
nop
nop
nop
nop
dec %rdx
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
and %r9, %r9
lea addresses_normal_ht+0x39f8, %rsi
lea addresses_WC_ht+0x10b18, %rdi
nop
nop
nop
nop
sub $51015, %rdx
mov $81, %rcx
rep movsb
nop
nop
nop
cmp $40606, %rsi
lea addresses_WC_ht+0x1daf8, %rsi
lea addresses_A_ht+0x22b8, %rdi
nop
nop
nop
sub $64753, %r13
mov $35, %rcx
rep movsb
nop
nop
nop
sub $37275, %rsi
lea addresses_D_ht+0x1e5c8, %rsi
lea addresses_WT_ht+0x99c4, %rdi
nop
sub %r9, %r9
mov $127, %rcx
rep movsq
nop
nop
nop
xor $36081, %r12
lea addresses_normal_ht+0x1d6b6, %r9
nop
nop
nop
xor $51400, %rdx
movb $0x61, (%r9)
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xf71c, %rsi
lea addresses_A_ht+0x15518, %rdi
nop
nop
cmp $14952, %rdx
mov $3, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1ab68, %r12
nop
nop
lfence
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x107ce, %r9
cmp $26088, %r12
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Load
mov $0x4bea5a0000000918, %r13
nop
nop
xor %r10, %r10
movb (%r13), %r9b
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x1d080, %rbx
dec %r15
movl $0x51525354, (%rbx)
nop
nop
nop
nop
dec %r9

// Store
mov $0x4bea5a0000000918, %r12
nop
nop
nop
sub $23390, %rbx
movw $0x5152, (%r12)
nop
nop
nop
add $46726, %r10

// Store
mov $0x4bea5a0000000918, %r9
clflush (%r9)
nop
nop
add $52244, %r15
movw $0x5152, (%r9)
nop
nop
nop
and %r15, %r15

// Faulty Load
mov $0x4bea5a0000000918, %r15
nop
nop
nop
dec %r13
mov (%r15), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 4, '52': 6}
00 00 52 00 52 52 52 52 00 52
*/
