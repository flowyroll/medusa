.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x135c5, %rbp
nop
nop
add $47309, %r15
movb (%rbp), %dl
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x199c5, %rsi
lea addresses_normal_ht+0x3645, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $122, %rcx
rep movsw
sub $4604, %rdi
lea addresses_WT_ht+0x1daef, %rdx
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xc845, %r15
clflush (%r15)
cmp $35008, %rbp
mov (%r15), %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x61c5, %rsi
lea addresses_UC_ht+0xf845, %rdi
nop
nop
nop
and $22722, %rdx
mov $43, %rcx
rep movsl
nop
nop
and $19978, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x3245, %rsi
lea addresses_D+0x6845, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $63037, %r11
mov $23, %rcx
rep movsw
nop
nop
sub %rdi, %rdi

// Load
mov $0x66ccc90000000438, %rbx
nop
nop
nop
sub %rdx, %rdx
mov (%rbx), %si
nop
nop
dec %rbx

// Store
lea addresses_RW+0x14e79, %rax
nop
nop
nop
dec %r11
movl $0x51525354, (%rax)
nop
sub $43784, %rax

// Load
lea addresses_UC+0x46e5, %rsi
nop
nop
nop
nop
xor %r11, %r11
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_normal+0x15945, %rsi
nop
nop
dec %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
and %r11, %r11

// Faulty Load
lea addresses_D+0x6845, %rdx
nop
nop
sub $64096, %rcx
movb (%rdx), %r11b
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'39': 7}
39 39 39 39 39 39 39
*/
