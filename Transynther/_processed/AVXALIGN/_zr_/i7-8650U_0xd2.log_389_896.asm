.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf7c4, %rcx
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
add $44496, %rcx
lea addresses_A_ht+0x1b279, %r15
clflush (%r15)
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
xor $40465, %r13
lea addresses_D_ht+0x6454, %rsi
lea addresses_UC_ht+0xde54, %rdi
nop
nop
cmp $58248, %rbp
mov $73, %rcx
rep movsw
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0xd254, %rsi
lea addresses_A_ht+0xc554, %rdi
clflush (%rsi)
nop
nop
nop
sub $15586, %rdx
mov $85, %rcx
rep movsq
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x12e54, %rsi
lea addresses_normal_ht+0x4fa0, %rdi
nop
nop
cmp $48835, %r8
mov $67, %rcx
rep movsw
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x118, %rdx
nop
cmp $51956, %rbp
movl $0x61626364, (%rdx)
nop
inc %r13
lea addresses_normal_ht+0xc018, %rsi
lea addresses_normal_ht+0x91c8, %rdi
clflush (%rdi)
nop
nop
cmp $46352, %r15
mov $9, %rcx
rep movsb
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xe4d4, %r15
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%r15), %r13b
nop
nop
nop
nop
nop
cmp $2462, %rbp
lea addresses_normal_ht+0x10c54, %rsi
lea addresses_D_ht+0xe284, %rdi
nop
cmp %r13, %r13
mov $87, %rcx
rep movsw
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x8454, %r9
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
add $37540, %r9

// Faulty Load
lea addresses_A+0x19c54, %rdi
clflush (%rdi)
nop
nop
nop
sub %rbp, %rbp
mov (%rdi), %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'00': 389}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
