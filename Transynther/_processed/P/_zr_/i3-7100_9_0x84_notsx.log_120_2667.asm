.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x11145, %rsi
lea addresses_WT_ht+0x9be5, %rdi
nop
nop
cmp %rdx, %rdx
mov $61, %rcx
rep movsb
nop
nop
nop
nop
sub $39308, %r12
lea addresses_WC_ht+0x2fdf, %rbp
nop
nop
nop
xor $22211, %rcx
movb (%rbp), %r12b
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x172a5, %rdx
nop
nop
nop
sub $36479, %rdi
mov (%rdx), %bp
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x18b0d, %rsi
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%rsi)
nop
and $22369, %rdi
lea addresses_D_ht+0xc4f3, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $62753, %rcx
mov (%r13), %esi
cmp $28875, %rcx
lea addresses_UC_ht+0x62cf, %rsi
lea addresses_D_ht+0xbef7, %rdi
nop
nop
nop
nop
sub $7146, %r12
mov $9, %rcx
rep movsw
nop
inc %rdx
lea addresses_UC_ht+0x17e5, %rdx
clflush (%rdx)
nop
nop
nop
sub $39759, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x123a1, %r12
nop
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%r12)
nop
nop
dec %rsi
lea addresses_WC_ht+0x15c11, %rsi
lea addresses_normal_ht+0x3925, %rdi
nop
nop
sub %r11, %r11
mov $15, %rcx
rep movsb
cmp %r11, %r11
lea addresses_WT_ht+0x1d7e5, %rsi
lea addresses_D_ht+0x19665, %rdi
clflush (%rdi)
and %r12, %r12
mov $17, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x14de5, %r11
nop
nop
nop
nop
add $64203, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r11)
nop
sub $52621, %rcx
lea addresses_normal_ht+0x15265, %rbp
nop
nop
nop
nop
nop
xor %r12, %r12
movb (%rbp), %r11b
nop
add %rbp, %rbp
lea addresses_A_ht+0x250c, %rsi
nop
and $56852, %rdi
movb $0x61, (%rsi)
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x9be5, %rcx
nop
sub $4144, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x19bd5, %rsi
nop
nop
nop
nop
nop
and $5959, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
xor $56614, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rdi

// Faulty Load
mov $0x7e5, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 120}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
