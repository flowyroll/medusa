.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x171ee, %rsi
lea addresses_normal_ht+0xe9bc, %rdi
cmp $14380, %r14
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x85dc, %rbx
nop
nop
nop
nop
nop
xor $13612, %rsi
mov (%rbx), %cx
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1b3cf, %rsi
lea addresses_WC_ht+0x137bc, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $44, %rcx
rep movsw
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0xa19c, %rcx
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
nop
nop
nop
nop
sub $31482, %r12
lea addresses_UC_ht+0x1353c, %rdi
nop
nop
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
inc %rsi
lea addresses_normal_ht+0x10954, %rsi
lea addresses_WT_ht+0x1d5bc, %rdi
nop
nop
dec %r15
mov $100, %rcx
rep movsb
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x4104, %rdi
nop
inc %rsi
movw $0x5152, (%rdi)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0x1e276, %r9
nop
nop
nop
inc %rbx
movl $0x51525354, (%r9)
nop
nop
sub $34360, %rsi

// Faulty Load
lea addresses_WC+0x177bc, %r9
nop
nop
xor $49090, %r11
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'44': 11903, '48': 2069, '00': 7857}
00 44 48 44 44 00 44 48 44 44 44 44 48 44 44 00 00 48 44 44 44 44 44 00 48 44 44 44 44 44 44 00 44 44 48 00 44 00 00 44 00 44 00 44 44 00 00 44 00 48 00 44 00 00 48 44 44 44 44 00 48 44 44 44 00 44 44 00 00 00 00 00 44 44 00 48 44 44 44 44 00 48 44 44 44 44 00 00 44 00 00 44 00 44 48 44 44 44 00 48 44 44 44 48 44 44 44 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 44 00 00 00 48 44 44 00 00 48 44 44 44 00 00 00 44 44 44 00 48 44 00 44 44 44 44 48 44 44 00 00 44 48 44 44 44 00 44 44 44 00 00 00 00 44 00 00 00 44 44 44 44 44 44 44 44 00 00 48 00 00 44 44 44 00 00 00 00 44 00 00 48 44 44 44 48 44 44 44 44 44 00 00 00 48 44 44 44 44 44 00 44 44 44 44 44 44 48 44 00 44 48 44 44 44 00 00 00 48 44 44 00 44 44 44 00 48 44 44 44 44 00 44 44 44 44 44 44 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 48 44 44 44 44 44 44 44 00 00 00 00 44 00 44 44 44 44 44 44 48 44 44 44 44 44 00 00 48 00 44 44 44 44 44 00 48 44 44 44 44 00 00 00 00 44 44 44 44 00 48 00 44 00 44 44 44 48 44 44 44 00 44 44 00 00 44 44 00 48 44 00 00 44 44 44 44 00 44 00 00 44 44 44 00 44 44 44 00 44 44 00 00 00 00 00 48 44 44 44 44 00 00 00 00 48 44 44 44 48 44 44 44 00 48 00 44 00 00 44 44 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 48 44 00 44 44 44 00 00 48 44 44 44 00 44 00 48 44 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 48 48 00 44 00 44 44 48 44 44 44 44 00 00 48 00 44 48 44 44 00 00 48 44 44 44 44 44 44 00 00 00 44 44 00 44 44 00 44 48 44 44 44 44 00 00 00 00 00 00 00 44 44 00 48 44 44 00 00 44 00 00 44 00 00 00 44 44 00 00 00 44 00 00 48 44 44 44 44 00 48 00 44 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 48 44 00 00 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 44 44 00 00 48 00 00 00 44 44 00 00 48 44 44 00 00 00 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 48 44 44 44 44 00 00 48 00 00 44 44 44 44 44 44 48 44 44 00 00 00 00 44 44 44 44 44 44 00 00 48 44 44 44 44 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 48 00 48 44 44 00 48 48 44 44 44 44 44 44 44 44 00 44 44 44 48 44 44 44 44 00 48 00 44 00 00 44 44 00 00 44 44 44 44 44 44 00 00 44 00 00 44 44 00 48 44 44 44 44 00 00 00 44 44 44 44 48 44 44 44 00 48 44 44 44 44 44 00 48 44 44 44 44 44 00 00 00 00 00 48 44 44 44 44 44 00 44 00 00 00 44 44 44 44 00 00 48 44 44 44 44 00 00 00 44 44 44 44 00 00 00 00 44 44 00 48 48 44 44 44 00 44 44 44 44 00 44 00 00 00 00 44 44 44 00 00 48 44 44 44 00 48 00 44 44 00 00 00 00 44 44 44 44 44 44 00 48 00 00 48 44 00 00 44 00 00 44 00 44 00 44 00 44 00 00 44 44 44 44 44 44 00 00 48 44 44 44 00 00 00 44 44 44 44 44 44 44 00 48 44 44 44 44 44 00 00 00 00 44 44 00 00 00 44 44 44 44 44 00 44 44 44 00 48 00 44 44 00 44 44 44 44 44 48 44 44 00 00 48 44 44 00 48 44 44 00 00 00 48 44 44 00 48 44 44 44 44 00 00 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 00 48 44 44 00 00 44 44 48 44 44 00 00 48 44 44 44 44 44 00 00 48 44 44 44 44 44 44 44 00 44
*/
