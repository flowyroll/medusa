.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1622, %rsi
lea addresses_A_ht+0x11622, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $56, %rcx
rep movsw
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x5816, %rdx
clflush (%rdx)
and $29190, %r11
movb $0x61, (%rdx)
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x12e22, %rsi
lea addresses_D_ht+0x10a2, %rdi
clflush (%rsi)
nop
cmp $22113, %r13
mov $25, %rcx
rep movsl
and %rsi, %rsi
lea addresses_WT_ht+0x6622, %rsi
nop
add $49364, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xd622, %rdi
nop
nop
nop
xor %rbp, %rbp
mov (%rdi), %esi
nop
and $7071, %r11
lea addresses_WC_ht+0x167eb, %rcx
nop
nop
sub $41966, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
sub $7097, %rsi
lea addresses_D_ht+0x6408, %rbp
sub $50972, %rdx
mov (%rbp), %ax
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xf422, %rsi
lea addresses_WC_ht+0x4e22, %rdi
clflush (%rdi)
nop
sub $61115, %rdx
mov $20, %rcx
rep movsw
nop
nop
nop
nop
sub $31877, %r11
lea addresses_normal_ht+0xbe22, %rsi
lea addresses_UC_ht+0x10522, %rdi
nop
nop
nop
dec %rdx
mov $77, %rcx
rep movsq
nop
nop
and %r13, %r13
lea addresses_A_ht+0x10122, %rsi
lea addresses_A_ht+0xc9d2, %rdi
nop
nop
and $16163, %rbp
mov $27, %rcx
rep movsb
nop
nop
nop
nop
sub $42254, %r13
lea addresses_A_ht+0xb622, %rsi
lea addresses_D_ht+0x32e, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $111, %rcx
rep movsb
cmp %r13, %r13
lea addresses_UC_ht+0x1ee22, %rsi
lea addresses_D_ht+0x647e, %rdi
clflush (%rsi)
nop
xor $44491, %rax
mov $42, %rcx
rep movsw
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x127a2, %rsi
lea addresses_normal_ht+0xb222, %rdi
nop
nop
nop
add %r11, %r11
mov $120, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_WC_ht+0xf8b2, %rcx
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rcx
movntdq %xmm7, (%rcx)
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1df12, %rsi
nop
nop
nop
nop
nop
sub $58072, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1f622, %rsi
lea addresses_D+0x126a2, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $36, %rcx
rep movsw
nop
nop
nop
nop
add $17547, %rax

// Store
lea addresses_WT+0x8622, %rdi
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovaps %ymm1, (%rdi)
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0xf5ea, %rsi
nop
sub $8609, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
cmp $62294, %rax

// Faulty Load
lea addresses_D+0x10e22, %rbx
nop
nop
add %rcx, %rcx
movb (%rbx), %al
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'36': 234}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
