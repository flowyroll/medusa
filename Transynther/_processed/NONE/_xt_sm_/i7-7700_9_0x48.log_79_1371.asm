.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13dae, %r15
nop
and %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r15
vmovntdq %ymm6, (%r15)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x9dae, %rax
nop
dec %r12
movb (%rax), %r10b
nop
sub $53625, %rax
lea addresses_A_ht+0x15ae, %r12
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r12)
sub %rbx, %rbx
lea addresses_WT_ht+0x10812, %rsi
lea addresses_D_ht+0x18370, %rdi
inc %r15
mov $25, %rcx
rep movsq
xor $48191, %rdi
lea addresses_WT_ht+0x5ae, %rsi
nop
nop
xor $53967, %rcx
movw $0x6162, (%rsi)
dec %r12
lea addresses_D_ht+0x12182, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %rcx
nop
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0x1e5ae, %rcx
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
xor $57784, %rdx

// Store
lea addresses_A+0x1e5ae, %r11
nop
cmp $62090, %rbp
movw $0x5152, (%r11)
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0x1e5ae, %r15
clflush (%r15)
nop
and $34927, %rax
mov (%r15), %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'52': 79}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
