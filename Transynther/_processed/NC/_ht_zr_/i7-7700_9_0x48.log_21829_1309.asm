.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1235c, %rsi
lea addresses_D_ht+0x114ac, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbx
mov $125, %rcx
rep movsq
nop
nop
dec %r8
lea addresses_A_ht+0x8b4, %r13
nop
nop
nop
inc %r9
movw $0x6162, (%r13)
xor %rbx, %rbx
lea addresses_normal_ht+0x153dc, %rsi
lea addresses_D_ht+0x1b8dc, %rdi
nop
nop
nop
xor %rax, %rax
mov $66, %rcx
rep movsl
nop
nop
xor $38262, %rdi
lea addresses_WT_ht+0xa71c, %r9
nop
nop
nop
nop
and $61775, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x6548, %rdi
clflush (%rdi)
sub %r8, %r8
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
dec %rdi
lea addresses_UC_ht+0x154dc, %rsi
lea addresses_UC_ht+0xddbc, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbx
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x14dc, %rdi
clflush (%rdi)
add $6631, %r13
movb $0x61, (%rdi)
nop
and $59039, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rdx
push %rsi

// Load
mov $0x34813b0000000adc, %r9
clflush (%r9)
nop
and $56788, %r10
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
and %r11, %r11

// Load
lea addresses_D+0xf16c, %r15
cmp %rdx, %rdx
mov (%r15), %r11
nop
nop
nop
sub $4285, %rsi

// Store
lea addresses_WC+0x1b3dc, %rsi
nop
nop
add $64880, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
mov $0xa7d3400000004dc, %r15
nop
sub %rsi, %rsi
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'49': 254, '48': 3223, '44': 122, '00': 18230}
00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 44 00 48 00 00 00 00 00 48 00 00 00 00 49 48 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 49 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 49 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 49 00 48 00 00 00 00 00 48 00 44 00 48 00 00 48 00 00 49 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 49 48 49 00 00 00 00 00 00 48 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 44 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 44 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 49 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 44 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 44 00 00 00 00 48 00 00 00 00 00 48 00 44 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 49 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 44 00 00 00 00 48 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 49 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 49 48 00 00 48 00 00 00 00 00 00 48 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 48 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48
*/
