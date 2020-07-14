.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rsi
lea addresses_D_ht+0x7aa8, %rsi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
xor $39362, %rax
lea addresses_WT_ht+0x1ec0a, %rsi
nop
nop
nop
nop
inc %r8
mov (%rsi), %r10w
nop
nop
xor $16605, %r8
lea addresses_A_ht+0x3e88, %rax
clflush (%rax)
nop
nop
nop
add $10414, %rsi
movb (%rax), %r11b
xor %r12, %r12
pop %rsi
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0xf288, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x51, (%rcx)
add $17779, %r13

// Store
lea addresses_RW+0x15418, %rdx
clflush (%rdx)
nop
nop
nop
xor %r13, %r13
movb $0x51, (%rdx)
xor %r11, %r11

// Faulty Load
lea addresses_normal+0x4a88, %rdx
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %r9w
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'34': 35}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
