.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x414, %r11
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%r11)
nop
nop
inc %r9
lea addresses_A_ht+0x104f4, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r10), %rax
nop
and $44864, %r9
lea addresses_WC_ht+0x2054, %r11
nop
nop
nop
and %rsi, %rsi
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
xor $46255, %r11
lea addresses_UC_ht+0x8dd4, %r8
and $25197, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
add $14385, %r11
lea addresses_A_ht+0x5554, %rsi
lea addresses_WC_ht+0x126e8, %rdi
nop
nop
nop
cmp %r10, %r10
mov $53, %rcx
rep movsb
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0xa994, %rsi
lea addresses_UC_ht+0x7b1e, %rdi
inc %rax
mov $105, %rcx
rep movsl
nop
nop
and $17144, %r10
lea addresses_D_ht+0xb3a4, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rdx

// Faulty Load
lea addresses_UC+0x1c3d4, %r10
nop
nop
nop
cmp $18344, %r14
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'46': 19241, '48': 72, '00': 477, '45': 2039}
46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 00 46 46 46 46 00 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 00 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 00 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 00 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 00 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 00 46 46 46 46 46 45 00 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46
*/
