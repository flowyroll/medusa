.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8f7b, %rsi
lea addresses_UC_ht+0x1b587, %rdi
nop
nop
nop
nop
sub $57381, %r8
mov $92, %rcx
rep movsl
dec %rdx
lea addresses_normal_ht+0x1977b, %rdx
nop
nop
nop
nop
nop
dec %r10
movb $0x61, (%rdx)
cmp $23120, %rcx
lea addresses_WC_ht+0x1587b, %r8
and $14747, %r15
movw $0x6162, (%r8)
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1077b, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x10fab, %r10
mfence
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
sub $2344, %rdx
lea addresses_D_ht+0x597b, %rsi
lea addresses_WT_ht+0xc8fb, %rdi
add $6952, %r10
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0xfc7b, %rdi
and %rdx, %rdx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
cmp $60390, %r15
lea addresses_WT_ht+0x13979, %rcx
nop
and $12552, %rdi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
xor $24192, %r10
lea addresses_D_ht+0xf7b, %r15
clflush (%r15)
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r15)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xd07b, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%rsi)
nop
sub $47493, %rsi
lea addresses_A_ht+0x1c927, %rsi
lea addresses_D_ht+0x7f17, %rdi
clflush (%rsi)
clflush (%rdi)
nop
and %r9, %r9
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
add $51552, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Load
lea addresses_US+0x1a77b, %rcx
clflush (%rcx)
nop
nop
nop
xor %r8, %r8
movb (%rcx), %bl
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x17f7b, %rbp
nop
nop
nop
nop
sub $45821, %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x12f7b, %r8
xor %r14, %r14
movb $0x51, (%r8)
xor $44102, %rcx

// Faulty Load
lea addresses_US+0x1a77b, %rbp
nop
sub $41826, %r8
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'49': 407, '45': 2585, '46': 4569, '44': 8606, '00': 5662}
44 44 46 44 00 44 44 46 00 46 44 44 00 44 00 44 00 44 46 45 46 00 00 00 00 44 45 46 44 00 44 45 46 44 46 44 44 44 46 44 45 44 44 44 00 49 44 45 46 44 46 44 00 00 45 46 44 00 44 46 00 00 44 44 46 44 00 46 44 46 44 00 44 46 44 00 44 00 44 45 46 44 44 44 44 46 44 45 45 44 45 00 00 46 44 00 00 46 44 45 00 44 45 00 44 44 45 46 44 49 44 45 46 44 46 44 45 00 44 46 44 00 44 00 44 45 44 00 46 44 45 44 45 44 44 00 44 49 44 45 46 44 49 44 45 44 44 00 44 44 46 00 45 00 44 46 44 00 44 45 44 44 46 44 45 00 46 00 00 44 00 46 00 00 44 00 00 00 44 00 46 45 46 00 46 44 00 45 46 44 46 44 49 44 44 46 44 46 44 46 00 45 44 45 00 45 46 44 46 44 00 44 44 45 44 45 00 44 00 44 46 44 46 45 46 44 44 44 00 44 45 00 44 45 46 44 46 44 45 44 45 46 44 49 00 00 46 44 00 44 46 44 00 44 45 00 00 45 46 44 00 44 00 44 46 44 45 46 44 45 00 44 00 44 00 44 44 46 44 46 44 00 44 44 45 00 44 45 46 45 46 44 46 44 00 44 44 00 44 00 00 44 46 00 44 46 44 46 44 00 46 45 46 00 46 44 46 44 00 46 44 46 44 00 46 00 00 44 45 00 44 44 44 46 44 45 00 00 00 00 44 44 46 44 45 44 44 46 44 00 00 45 46 44 00 00 45 00 44 45 44 44 49 44 00 46 44 45 46 44 00 46 44 00 44 00 44 00 00 44 00 00 44 46 44 46 44 45 44 44 46 44 45 44 44 46 44 44 44 46 00 44 49 44 45 00 44 46 44 44 00 44 46 44 45 00 44 46 00 45 44 44 00 00 45 44 44 00 00 46 44 44 00 44 00 46 44 00 46 44 46 44 44 46 44 00 44 46 44 45 00 44 46 44 45 00 44 46 44 44 46 44 45 44 44 45 44 44 46 44 44 46 00 46 44 45 00 00 00 44 44 46 00 44 44 45 44 44 44 44 46 44 45 44 00 44 45 00 44 00 44 45 49 44 45 44 45 46 44 44 00 46 44 00 44 44 46 44 45 00 44 46 00 45 44 45 46 00 00 44 00 44 46 44 46 44 49 00 45 44 45 46 44 00 46 44 46 00 00 00 00 46 44 45 00 00 00 45 46 45 44 45 46 00 46 44 46 00 49 44 45 44 45 46 44 44 44 00 44 45 44 00 00 00 00 44 46 44 46 44 46 44 46 44 45 46 44 44 46 44 00 46 44 00 44 46 44 46 44 45 00 44 44 00 44 45 44 44 45 46 44 00 44 00 46 45 44 45 44 44 44 44 44 00 44 46 44 49 44 44 46 00 00 00 44 46 44 46 44 46 44 45 46 44 46 00 45 44 45 44 00 46 00 49 44 44 44 44 46 00 46 00 46 44 46 44 00 00 44 00 00 46 44 00 44 45 00 45 46 44 46 44 00 00 44 46 00 45 00 44 00 44 46 44 45 44 44 44 46 44 46 44 45 44 44 46 44 00 00 46 00 45 44 00 46 44 00 44 00 44 00 44 00 00 00 00 00 45 44 00 00 45 00 00 46 44 00 00 00 46 00 00 46 00 45 00 44 00 44 45 46 44 45 44 00 46 44 44 45 44 00 46 44 46 44 46 44 45 46 44 00 44 45 44 00 46 00 46 00 46 44 45 44 44 46 44 46 45 46 44 00 44 46 44 46 00 46 44 49 44 00 46 44 46 44 45 44 44 46 00 00 00 44 46 44 44 00 44 45 44 44 00 00 45 46 44 46 44 45 46 44 46 00 00 00 46 44 46 44 49 44 44 46 44 46 00 45 00 44 46 44 00 45 44 45 46 00 44 00 44 45 44 00 00 44 45 00 00 46 44 45 00 44 46 44 46 44 45 46 00 46 44 00 44 00 00 46 44 00 44 44 46 44 46 44 46 00 44 00 44 00 44 00 44 44 44 45 46 44 44 44 46 44 49 44 44 00 44 45 44 44 46 00 46 44 44 44 00 00 44 44 46 44 45 46 44 00 44 44 45 44 00 00 44 46 44 00 44 00 44 44 46 00 45 00 44 46 44 45 46 00 44 44 46 44 46 00 46 45 46 44 00 44 45 44 00 00 45 46 44 00 00 45 46 44 00 44 46 44 49
*/
