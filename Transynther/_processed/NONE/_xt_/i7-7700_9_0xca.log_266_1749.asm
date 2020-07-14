.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb2ef, %r9
nop
inc %r11
mov (%r9), %ebx
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1e037, %rsi
lea addresses_WT_ht+0xf0b8, %rdi
nop
nop
and $57704, %r11
mov $73, %rcx
rep movsl
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x12776, %rsi
lea addresses_UC_ht+0xbe67, %rdi
nop
and %r11, %r11
mov $76, %rcx
rep movsq
nop
sub $64394, %rcx
lea addresses_D_ht+0x98f, %r11
nop
nop
nop
inc %r9
movb (%r11), %r8b
nop
nop
nop
sub $62756, %rdi
lea addresses_WT_ht+0x2aa7, %rsi
lea addresses_D_ht+0xb4a7, %rdi
clflush (%rsi)
nop
nop
nop
and %r13, %r13
mov $35, %rcx
rep movsw
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x10db4, %r11
nop
add $14644, %r8
mov (%r11), %rbx
nop
nop
and $3958, %r13
lea addresses_D_ht+0x1e143, %rsi
clflush (%rsi)
nop
sub $41396, %rbx
mov (%rsi), %r9
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xe57, %rsi
lea addresses_WC_ht+0x109c7, %rdi
nop
nop
and %r11, %r11
mov $108, %rcx
rep movsq
nop
nop
dec %r13
lea addresses_D_ht+0x6357, %rsi
clflush (%rsi)
nop
sub $1891, %r11
mov (%rsi), %ecx
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x11ea7, %rsi
lea addresses_A_ht+0x16017, %rdi
cmp $2435, %r11
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x19983, %r11
nop
inc %rcx
movb (%r11), %bl
sub %r9, %r9
lea addresses_WC_ht+0x160a7, %rcx
nop
inc %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rcx)
cmp %rbx, %rbx
lea addresses_WT_ht+0x140a7, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rsi), %di
add %rsi, %rsi
lea addresses_A_ht+0xeaa7, %rsi
lea addresses_D_ht+0x18787, %rdi
nop
inc %r11
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
and $14187, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x136a7, %rsi
lea addresses_PSE+0xe592, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $41, %rcx
rep movsq
nop
nop
dec %rdi

// Load
lea addresses_UC+0x2ea7, %r12
nop
nop
add $49620, %r9
mov (%r12), %bp
nop
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0x2a7, %rdi
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
add $24449, %r9

// Store
lea addresses_PSE+0x10da7, %rbp
nop
nop
nop
and $61499, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rbp)
xor %rsi, %rsi

// Faulty Load
lea addresses_RW+0xb6a7, %rcx
nop
xor %rbp, %rbp
movb (%rcx), %r12b
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'32': 266}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
