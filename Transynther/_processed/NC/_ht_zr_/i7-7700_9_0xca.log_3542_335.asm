.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x137ee, %rbx
nop
sub %r13, %r13
movb $0x61, (%rbx)
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x12872, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r8), %r10
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x194a, %rbx
nop
nop
and %r11, %r11
movw $0x6162, (%rbx)
cmp $4725, %r11
lea addresses_WT_ht+0x24a, %r13
nop
nop
nop
xor $50062, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r13)
nop
nop
add $30769, %r11
lea addresses_WC_ht+0x32ca, %rbx
nop
nop
nop
xor $15752, %r10
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x1934a, %r8
clflush (%r8)
nop
nop
nop
nop
xor $12311, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%r8)
and %rax, %rax
lea addresses_WT_ht+0x1e24a, %rsi
lea addresses_normal_ht+0x12d8a, %rdi
dec %r11
mov $93, %rcx
rep movsl
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x4a, %r13
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r13)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1624a, %rsi
lea addresses_UC_ht+0x1052a, %rdi
nop
sub $22660, %r11
mov $73, %rcx
rep movsb
nop
and $17921, %rsi
lea addresses_normal_ht+0x6b0d, %rbx
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rbx)
nop
nop
dec %rsi
lea addresses_UC_ht+0x1c2ea, %r11
nop
and %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x18a4a, %rsi
lea addresses_UC_ht+0x1ae4a, %rdi
nop
nop
nop
nop
xor $42945, %rax
mov $104, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x184a, %r8
nop
nop
and $34440, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r8)
nop
xor $14424, %r10
lea addresses_normal_ht+0x14852, %rsi
inc %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x3b1a, %rsi
lea addresses_WT_ht+0x4d7a, %rdi
nop
nop
sub $57513, %r10
mov $70, %rcx
rep movsb
nop
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x11aca, %rbp
nop
nop
nop
xor $47303, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
xor $54140, %r13

// Store
lea addresses_normal+0x1964a, %rbx
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WC+0x1724a, %rbp
nop
nop
nop
nop
add $45008, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm1
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm1, (%rbp)
nop
and %rbx, %rbx

// Store
lea addresses_RW+0x9b5e, %rbp
cmp $62127, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_WC+0x7d0e, %r12
nop
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r12)
nop
nop
nop
xor $2659, %r12

// Faulty Load
mov $0x6e08df000000024a, %r13
clflush (%r13)
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r13), %r12d
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': True, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'45': 1, '00': 3541}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
