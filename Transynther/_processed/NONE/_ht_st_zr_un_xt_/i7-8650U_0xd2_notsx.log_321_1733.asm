.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xab24, %rsi
lea addresses_WC_ht+0x2d24, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r10
mov $73, %rcx
rep movsw
nop
add %r9, %r9
lea addresses_UC_ht+0x3584, %rsi
nop
nop
nop
xor %r14, %r14
mov (%rsi), %edi
nop
cmp $28866, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x5740, %rbx
add %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rbx)
nop
inc %r10

// Store
lea addresses_WT+0x8ea4, %rdi
nop
nop
dec %r8
movb $0x51, (%rdi)
nop
sub %r8, %r8

// REPMOV
lea addresses_A+0x16924, %rsi
lea addresses_RW+0x1f86a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $4756, %rbx
mov $2, %rcx
rep movsq
xor %rdi, %rdi

// Faulty Load
lea addresses_A+0x11d24, %r8
nop
nop
nop
nop
add $17525, %r15
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 241, '35': 71, '45': 5, 'fd': 3, '3c': 1}
00 00 35 00 35 00 00 35 35 00 00 00 35 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 35 00 00 00 35 00 00 00 35 35 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 35 00 00 00 00 35 00 35 35 00 00 00 00 45 00 00 00 00 00 35 00 00 00 00 35 00 00 00 00 35 00 00 00 00 35 35 00 35 35 00 45 00 00 35 00 35 00 00 fd 00 35 00 00 35 00 00 00 35 00 00 00 35 00 35 00 00 00 00 00 35 00 00 35 00 fd 00 35 00 35 00 00 00 00 00 35 00 00 00 00 00 00 00 35 00 00 00 35 00 00 00 45 35 00 00 35 00 00 00 00 00 35 00 45 00 00 00 35 00 35 00 00 35 45 00 00 35 00 00 00 00 00 00 00 00 00 00 35 00 35 00 00 35 00 00 00 00 00 00 35 35 00 00 35 00 00 00 00 00 00 00 00 35 00 35 00 35 00 00 00 35 00 00 00 35 00 00 35 00 00 00 00 00 00 00 35 00 00 35 35 35 00 00 00 00 00 00 00 00 00 00 35 35 00 00 00 35 00 00 00 35 35 00 00 00 00 00 00 00 00 35 00 3c 35 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 fd 00 00 00 00 35 35 00 35 00 00 00 00
*/
