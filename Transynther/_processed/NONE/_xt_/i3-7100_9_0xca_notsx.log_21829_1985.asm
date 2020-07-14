.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi
lea addresses_WC_ht+0x19bc8, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0xbfb8, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
mov (%rcx), %rbp
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1ab8, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
xor $31980, %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x18db8, %r12
nop
nop
nop
nop
nop
inc %r11
mov (%r12), %r9
nop
nop
nop
nop
nop
add $28451, %rbx

// Store
lea addresses_WC+0xf8b8, %r9
nop
nop
sub $18584, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
cmp %r14, %r14

// Load
lea addresses_normal+0xa2b8, %rbx
dec %r12
mov (%rbx), %r9
nop
nop
nop
cmp %r14, %r14

// REPMOV
lea addresses_WC+0x1be40, %rsi
lea addresses_WT+0x1cfec, %rdi
clflush (%rsi)
xor $58996, %r11
mov $64, %rcx
rep movsb
and $13850, %r12

// Store
lea addresses_D+0x22b8, %r14
nop
nop
nop
nop
and $61687, %r11
movb $0x51, (%r14)
nop
nop
add $24790, %r11

// Faulty Load
lea addresses_normal+0xa2b8, %rdi
cmp $63024, %r12
mov (%rdi), %r9d
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
