.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x45ae, %rax
cmp $9976, %r8
movb (%rax), %r13b
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x60ae, %rbp
xor $12105, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xfdae, %rsi
lea addresses_D_ht+0x1e6fe, %rdi
clflush (%rdi)
nop
nop
nop
and $30604, %rax
mov $89, %rcx
rep movsl
sub $13512, %rcx
lea addresses_WT_ht+0x181ae, %rbp
add $45250, %r11
mov (%rbp), %esi
nop
sub $22997, %rbp
lea addresses_A_ht+0x67ee, %rsi
lea addresses_D_ht+0x18dae, %rdi
add $23928, %r11
mov $62, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x11f52, %rax
nop
nop
add $63685, %rsi
movb (%rax), %r8b
cmp %rdi, %rdi
lea addresses_D_ht+0x1ca57, %rsi
lea addresses_normal_ht+0x189ae, %rdi
nop
sub $21893, %r13
mov $94, %rcx
rep movsl
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x25fe, %r12
nop
nop
nop
nop
nop
dec %r10
movw $0x5152, (%r12)
cmp %r9, %r9

// Faulty Load
mov $0xdae, %rcx
nop
nop
nop
inc %r9
vmovaps (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'48': 9305, '72': 1, '46': 3605, '45': 404, '00': 8514}
00 00 00 00 00 48 00 00 48 46 48 48 00 00 00 00 00 48 48 00 00 00 00 48 46 46 46 00 48 00 00 00 48 46 48 46 00 00 48 46 00 48 48 00 48 46 48 00 48 00 00 00 48 00 48 46 48 00 00 00 00 00 00 46 00 46 48 46 48 00 48 00 46 46 46 46 48 46 46 46 48 00 48 48 48 48 48 48 00 00 48 46 48 00 48 00 00 00 00 00 00 46 00 48 48 00 00 00 48 00 48 46 48 00 00 00 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 00 48 46 46 00 48 46 48 00 48 00 48 46 00 00 48 46 48 46 48 00 45 46 48 48 48 48 46 46 00 00 00 48 48 48 48 48 48 00 46 00 46 00 45 46 00 00 48 48 48 46 46 48 46 48 48 48 46 48 00 48 00 48 46 00 46 00 46 00 46 48 00 00 00 46 48 00 00 48 46 48 48 48 00 46 46 00 48 46 00 00 46 48 00 00 48 00 48 48 00 00 48 48 00 00 48 00 48 48 48 00 00 48 00 48 48 46 48 46 48 00 48 46 48 48 48 48 48 48 00 48 00 00 00 00 00 48 46 48 46 00 46 48 46 48 46 48 00 46 48 48 46 00 00 00 00 46 46 48 48 48 00 48 00 48 46 00 46 00 46 00 48 48 48 00 46 48 48 46 48 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 45 48 00 48 48 48 00 48 48 00 00 48 46 48 48 48 46 00 00 48 00 48 48 00 00 00 00 48 48 48 00 48 00 48 00 48 00 00 00 00 46 00 46 48 46 46 00 46 48 46 48 46 00 46 48 48 45 48 00 00 00 00 46 48 48 46 48 00 48 00 46 00 46 00 00 48 48 00 00 00 48 00 46 00 48 48 48 48 46 00 48 00 48 48 48 46 46 48 48 48 48 45 48 45 00 48 46 00 00 00 46 46 00 46 48 48 45 48 46 48 00 00 00 00 48 46 48 48 00 00 48 46 48 48 48 48 00 48 48 48 46 00 48 48 48 48 46 48 00 00 48 46 48 00 48 00 48 00 48 00 48 46 48 00 46 00 00 48 46 48 00 00 00 45 48 45 48 48 48 48 48 45 00 46 48 48 46 48 48 00 46 00 48 46 00 48 00 48 00 48 48 00 00 48 00 00 48 00 48 00 48 00 48 46 48 00 48 00 00 00 48 00 48 00 48 00 48 00 48 00 48 46 48 00 48 46 48 00 00 46 48 46 48 48 00 00 48 00 46 48 46 48 46 48 46 48 00 48 48 46 48 00 46 48 48 48 46 48 46 48 48 00 00 48 48 00 48 48 00 00 00 00 00 00 48 00 48 46 00 00 48 46 48 48 48 00 00 48 48 48 00 00 00 00 48 46 48 46 48 46 00 46 48 46 00 48 48 00 00 00 48 00 48 48 48 48 46 48 46 00 48 00 00 48 48 48 00 00 00 00 00 46 00 48 48 45 48 00 48 00 46 45 00 48 00 48 00 48 48 48 48 48 00 48 45 48 00 48 48 48 46 00 48 00 48 00 48 00 48 48 48 00 48 46 00 48 46 48 48 00 48 46 48 00 00 46 00 46 00 46 48 00 00 48 48 48 00 00 00 48 00 48 00 00 48 48 48 00 48 00 46 48 48 46 48 46 48 48 48 46 48 46 46 00 48 48 48 48 45 00 48 46 48 48 48 48 48 00 46 48 48 48 48 48 46 48 48 48 46 00 48 48 48 48 46 48 46 48 00 48 46 00 48 48 48 00 45 46 00 00 48 45 00 00 48 48 46 00 46 46 00 00 00 48 46 45 46 00 48 46 46 48 00 00 00 00 00 45 48 48 48 48 48 46 00 48 46 00 48 48 46 00 46 00 00 48 46 48 00 48 46 48 48 46 48 00 45 48 46 48 00 00 00 48 48 48 48 00 00 00 48 00 48 46 00 48 48 48 46 48 46 00 48 00 00 00 48 00 48 46 00 46 48 00 48 48 00 48 48 00 00 48 00 48 00 48 48 00 48 00 48 48 00 48 48 46 46 00 48 45 00 48 46 00 48 48 48 48 46 46 46 00 00 48 48 00 48 48 00 48 00 00 00 48 00 00 00 48 46 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 46 00 00 48 48 00 00 00 00 46 48 00 48 00 00 46 00 00 48 46 00 46 48 00 48 46 48 46
*/
