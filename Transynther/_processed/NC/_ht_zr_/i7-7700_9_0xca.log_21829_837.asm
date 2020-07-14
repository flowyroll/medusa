.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1698f, %rsi
lea addresses_UC_ht+0x1c8cf, %rdi
nop
nop
add $21019, %r10
mov $88, %rcx
rep movsq
nop
nop
nop
xor $44889, %r15
lea addresses_UC_ht+0x163cf, %rsi
nop
nop
and $21497, %r12
mov (%rsi), %r15d
nop
nop
nop
cmp $61013, %r12
lea addresses_D_ht+0x269f, %rcx
add $33206, %rdx
movb $0x61, (%rcx)
add %r15, %r15
lea addresses_WT_ht+0x157f, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $10584, %rcx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rdx
xor %r12, %r12
lea addresses_normal_ht+0xca1f, %rsi
lea addresses_UC_ht+0xca8f, %rdi
nop
nop
nop
nop
nop
cmp $47427, %rbp
mov $10, %rcx
rep movsq
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x109e7, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
sub $55200, %rdi
lea addresses_WT_ht+0x4e93, %rsi
lea addresses_WC_ht+0x5e0d, %rdi
nop
nop
nop
add %r15, %r15
mov $91, %rcx
rep movsl
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x16b7f, %rsi
lea addresses_A_ht+0x546f, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $8272, %rbp
mov $71, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1a18f, %rsi
lea addresses_A_ht+0x8bcf, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $6987, %rcx
lea addresses_normal_ht+0xe5bf, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm6, (%rcx)
add %r12, %r12
lea addresses_normal_ht+0x10acf, %rdx
clflush (%rdx)
cmp $43528, %r12
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0xae9f, %r10
nop
nop
xor %rcx, %rcx
mov (%r10), %si
nop
xor %rdi, %rdi
lea addresses_A_ht+0x5dcf, %r15
nop
nop
nop
xor $38111, %rdi
movb $0x61, (%r15)
nop
and $60278, %rdx
lea addresses_WT_ht+0x56cf, %rsi
lea addresses_UC_ht+0x136bf, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $126, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rdi
push %rsi

// Faulty Load
mov $0x70179b00000002cf, %r9
nop
and %rsi, %rsi
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'46': 19, '00': 6, '49': 11535, '45': 10267, '44': 2}
49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 49 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 46 49 49 45 49 45 49 45 49 49 45 49 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49 45 49
*/
