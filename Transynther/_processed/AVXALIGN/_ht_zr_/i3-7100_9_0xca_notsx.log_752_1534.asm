.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16282, %r10
nop
nop
nop
nop
add %r13, %r13
mov (%r10), %rbx
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1ba46, %r15
nop
dec %r9
movb (%r15), %dl
nop
nop
nop
add $36527, %r15
lea addresses_A_ht+0x1b482, %rsi
lea addresses_WT_ht+0x15182, %rdi
clflush (%rsi)
nop
nop
nop
xor %r15, %r15
mov $43, %rcx
rep movsq
nop
nop
xor $18039, %rsi
lea addresses_D_ht+0x73fa, %rsi
lea addresses_WT_ht+0xcb02, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x8c42, %rsi
nop
nop
dec %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1d9fe, %rsi
lea addresses_WT_ht+0x1818a, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $116, %rcx
rep movsl
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x6c02, %rsi
lea addresses_D_ht+0xcb82, %rdi
dec %rdx
mov $14, %rcx
rep movsq
nop
nop
nop
and $39428, %rcx
lea addresses_UC_ht+0x18b60, %rsi
nop
nop
sub $40601, %rbx
mov (%rsi), %rdi
nop
nop
and $53105, %r9
lea addresses_D_ht+0x1b062, %rsi
lea addresses_WC_ht+0x1d82, %rdi
sub %r9, %r9
mov $2, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x2f82, %rbx
nop
nop
nop
nop
nop
and $26282, %r9
movb (%rbx), %dl
nop
cmp $47135, %rsi
lea addresses_WC_ht+0xcdb2, %rsi
lea addresses_UC_ht+0x1ef5f, %rdi
clflush (%rsi)
add %r10, %r10
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0xeae2, %r10
xor $15274, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xd82, %rsi
lea addresses_A+0x13d82, %rdi
nop
nop
nop
nop
nop
cmp $11550, %r9
mov $25, %rcx
rep movsl
nop
nop
inc %rdi

// Store
lea addresses_UC+0x5682, %rcx
nop
nop
nop
xor $6408, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
cmp $23266, %rbx

// Faulty Load
mov $0xd82, %r12
nop
nop
nop
nop
nop
inc %r9
vmovntdqa (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 27, '00': 707, '45': 18}
00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00
*/
