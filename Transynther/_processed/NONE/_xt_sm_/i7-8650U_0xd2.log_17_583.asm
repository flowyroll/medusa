.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xae34, %rsi
lea addresses_WT_ht+0x166e2, %rdi
inc %r13
mov $20, %rcx
rep movsb
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0xa317, %r9
nop
and $50677, %r14
mov (%r9), %cx
nop
nop
nop
xor $18212, %r14
lea addresses_normal_ht+0x1e6e2, %rsi
lea addresses_WT_ht+0x19512, %rdi
xor $26505, %rdx
mov $32, %rcx
rep movsl
xor %rdx, %rdx
lea addresses_normal_ht+0xd382, %rsi
lea addresses_normal_ht+0x3862, %rdi
nop
nop
nop
and $50963, %rbp
mov $57, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xeb06, %rsi
xor $24686, %rdx
movb $0x61, (%rsi)
dec %rbp
lea addresses_normal_ht+0x1b762, %rsi
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x72e2, %r13
nop
and %rbp, %rbp
movl $0x61626364, (%r13)
nop
nop
nop
add $49730, %r9
lea addresses_WC_ht+0x1cee2, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %rcx
nop
nop
nop
nop
sub $54307, %rdi
lea addresses_WT_ht+0x186e2, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rdi)
nop
lfence
lea addresses_D_ht+0x384, %rsi
lea addresses_normal_ht+0x7822, %rdi
nop
nop
nop
inc %r13
mov $6, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $654, %rsi
lea addresses_UC_ht+0x1a9a2, %rsi
lea addresses_WT_ht+0x151a2, %rdi
cmp %r9, %r9
mov $25, %rcx
rep movsw
nop
dec %rdx
lea addresses_WT_ht+0x142e2, %rbp
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbp)
xor $12920, %rbp
lea addresses_UC_ht+0x166d2, %rdi
nop
dec %r14
mov (%rdi), %r13
nop
nop
nop
add $9163, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WC+0x96e2, %r11
add $51114, %rsi
movw $0x5152, (%r11)
nop
nop
nop
cmp $61871, %rsi

// Store
lea addresses_WC+0x1ee2, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $3203, %rsi
movb $0x51, (%rbx)
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0x15d86, %rsi
nop
cmp %rax, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
and $27466, %r11

// Store
mov $0x60bb0500000002e2, %r12
nop
nop
nop
and $19725, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
and $43471, %rbx

// Store
lea addresses_US+0x6362, %r12
nop
nop
nop
add $14684, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r12)

// Exception!!!
nop
nop
mov (0), %rdi
nop
inc %rbx

// Faulty Load
lea addresses_WC+0x96e2, %r8
nop
nop
dec %rdi
movb (%r8), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'52': 17}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
