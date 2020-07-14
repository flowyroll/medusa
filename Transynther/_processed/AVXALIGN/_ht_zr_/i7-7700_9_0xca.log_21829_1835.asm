.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1935d, %r11
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%r11)
nop
inc %r12
lea addresses_D_ht+0x1c87d, %rsi
lea addresses_D_ht+0x6ced, %rdi
nop
nop
cmp %r10, %r10
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $8048, %r11
lea addresses_D_ht+0x16a7d, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $21822, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x14a55, %rcx
nop
xor $53938, %r10
movw $0x6162, (%rcx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xea7d, %r11
nop
nop
add %rdi, %rdi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xe47d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $63183, %r12
mov (%rdi), %r9w
nop
nop
nop
xor $57279, %r13
lea addresses_A_ht+0x11415, %rsi
lea addresses_UC_ht+0x113ca, %rdi
nop
nop
nop
nop
dec %r9
mov $61, %rcx
rep movsl
add $61387, %r10
lea addresses_D_ht+0x1e97d, %r12
nop
nop
nop
dec %rdi
mov (%r12), %esi
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xb9b5, %rsi
lea addresses_A_ht+0x15b7d, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $51, %rcx
rep movsb
dec %rcx
lea addresses_WC_ht+0x8afd, %rsi
lea addresses_WT_ht+0x7421, %rdi
nop
nop
xor %r9, %r9
mov $8, %rcx
rep movsb
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x4f85, %rsi
lea addresses_normal_ht+0x1dd7d, %rdi
nop
cmp %r9, %r9
mov $77, %rcx
rep movsb
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x12bf9, %r13
nop
nop
nop
dec %rcx
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x3fbd, %rsi
lea addresses_D_ht+0xe87d, %rdi
nop
nop
mfence
mov $69, %rcx
rep movsl
inc %r9
lea addresses_WC_ht+0x8a7d, %rsi
lea addresses_D_ht+0x1cbf5, %rdi
nop
nop
add $5629, %r11
mov $35, %rcx
rep movsl
nop
nop
cmp $40364, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbx

// Store
lea addresses_normal+0xdc0d, %r9
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%r9)
nop
nop
nop
nop
cmp $45387, %r12

// Store
lea addresses_PSE+0xc37d, %rax
add %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovaps %ymm5, (%rax)
add $52241, %rax

// Store
mov $0x76ab4d0000000575, %r14
nop
nop
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%r14)
nop
nop
nop
inc %rax

// Store
lea addresses_A+0x7c7d, %r8
clflush (%r8)
nop
nop
nop
sub $15059, %r9
movl $0x51525354, (%r8)
nop
nop
nop
add $6437, %rax

// Faulty Load
lea addresses_UC+0x1827d, %r9
nop
and $48604, %r14
vmovntdqa (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'46': 12, '00': 151, '48': 880, '45': 20786}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 48 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 48 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 48 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45
*/
