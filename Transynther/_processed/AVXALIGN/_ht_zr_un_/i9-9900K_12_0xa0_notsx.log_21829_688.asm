.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1080a, %rbx
nop
sub %rdi, %rdi
movw $0x6162, (%rbx)
nop
inc %r8
lea addresses_WT_ht+0x1c02a, %rsi
lea addresses_A_ht+0x15a4a, %rdi
nop
cmp $21484, %r9
mov $121, %rcx
rep movsq
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x143e6, %rbx
nop
nop
nop
add %r9, %r9
movb $0x61, (%rbx)
sub %rsi, %rsi
lea addresses_UC_ht+0xceae, %rdi
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xb18a, %rdi
nop
nop
sub $43367, %rsi
movb (%rdi), %r8b
nop
sub %r8, %r8
lea addresses_normal_ht+0x15dca, %rbx
nop
nop
nop
nop
nop
and $48945, %rbp
mov (%rbx), %r8d
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x384a, %rsi
lea addresses_WC_ht+0x7c4a, %rdi
nop
nop
nop
nop
nop
cmp $58585, %rax
mov $22, %rcx
rep movsw
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0xf44a, %rcx
nop
nop
nop
nop
nop
sub %r15, %r15
vmovaps (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'47': 17305, '08': 2, 'de': 5, '88': 1, 'ff': 1, '49': 2717, '00': 1798}
49 49 47 47 47 47 47 47 47 00 49 47 49 49 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 49 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 49 47 00 47 47 49 49 47 47 47 47 47 47 00 47 47 47 47 49 47 47 47 47 47 47 47 49 47 47 49 47 47 47 47 47 49 47 00 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 47 00 47 47 47 47 47 49 47 47 47 47 47 47 47 08 00 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 49 47 49 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 00 47 47 47 47 47 47 00 47 47 47 47 47 47 49 00 49 47 47 47 47 47 47 47 47 47 00 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 00 49 47 00 49 49 47 47 47 49 49 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 00 47 47 49 47 47 49 47 47 49 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 00 49 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 49 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 49 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 49 47 47 47 49 47 47 00 49 47 47 47 47 47 49 00 49 47 47 47 49 47 47 00 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 49 47 49 47 47 49 47 49 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 00 49 47 47 47 47 49 00 49 47 47 47 47 47 49 47 47 47 47 47 47 49 47 47 47 47 47 47 47 49 47 47 47 47 49 47 49 47 47 47 47 47 47 47 47 47 49 00 49 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 49 47 47 47 47 00 47 47 47 47 47 49 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 49 00 47 49 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 00 47 47 47 47 47 00 47 47 47 47 00 47 47 47 47 47 47 49 47 47 47 47 47 47 47 00 49 47 47 47 47 47 47 00 00 49 00 47 00 47 47 00 47 47 47 47 00 47 47 49 49 47 00 47 47 47 47 47 00 47 49 47 49 47 47 49 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47 00 47 47 47 49 47 49 47 49 47 00 49 47 00 47 47 47 47 47 47 49 47 00 47 49 47 49 47 49 47 47 49 47 47 47 47 47 47 47 49 49 47 47 47 47 49 47 47 47 47 47 47 49 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 00 47 47 49 47 47 47 49 47 47 47 47 49 47 00 47 47 47 47 47 47 47 47 47 47 47 47 47 49 47 47 47 49 47 00 47 47 47 47 49 47 47 47 00 49 49 47 47 49 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 47 08 49 47 47 47 47 47 49 47 47 00 47 00 47 47 00 49 49 47 47 49 47 49 47 49 00 47 47 47 47 47 47 47 47 47 49 47 47 47 49 47 47 47 49 00 47 47 47 47 47 47 47 47 47 49 47 47 47 47 47 47 47
*/
