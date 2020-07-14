.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdx
lea addresses_normal_ht+0xf6f, %r12
nop
nop
nop
xor %r8, %r8
movb (%r12), %dl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x39bf, %rbx
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
cmp $36885, %r11
lea addresses_WT_ht+0x1516f, %r11
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x16ae3, %rdx
nop
nop
sub $43349, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rdx)
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x98ef, %rbx
nop
nop
nop
nop
add $41450, %rcx
mov (%rbx), %rdx
nop
nop
nop
and $34510, %r8
lea addresses_WT_ht+0xbec7, %rbx
nop
nop
nop
nop
inc %rax
mov (%rbx), %r8d
nop
nop
nop
nop
dec %r11
lea addresses_A_ht+0x105db, %rbx
nop
and %r12, %r12
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
cmp %rax, %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x936f, %rcx
nop
nop
sub $49511, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movaps %xmm0, (%rcx)
nop
sub $7288, %rax

// Store
lea addresses_UC+0x236f, %rdx
nop
nop
nop
nop
nop
add $4956, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovaps %ymm3, (%rdx)
nop
nop
nop
xor $51183, %rax

// Store
lea addresses_US+0x676f, %r8
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
dec %rax

// Store
mov $0x5eefcc000000078d, %rbx
nop
nop
nop
nop
nop
xor $49973, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x821f, %rax
sub $8782, %rbx
movw $0x5152, (%rax)
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_WC+0x10f6f, %r9
nop
dec %rbx
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 8540, '45': 13289}
45 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 45 00 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 00 00 45 00 45 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 00 45 00 00 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 00 00 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 00 45 00 45 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 45 45 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 45
*/
