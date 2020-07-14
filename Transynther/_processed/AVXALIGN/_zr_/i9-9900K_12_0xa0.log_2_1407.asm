.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4cdd, %r15
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
xor $46353, %rax
lea addresses_WT_ht+0x1f5d, %r14
nop
sub $23592, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
add $548, %rbx
lea addresses_A_ht+0x188dd, %r15
nop
nop
and $7036, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r15)
nop
sub %r15, %r15
lea addresses_WT_ht+0x1e53d, %r10
nop
nop
xor %r15, %r15
mov (%r10), %ecx
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xa49d, %rbp
nop
nop
add %rax, %rax
mov (%rbp), %rcx
nop
nop
nop
nop
nop
and $8416, %rax
lea addresses_D_ht+0x6ab5, %r15
nop
and $52594, %rbx
movl $0x61626364, (%r15)
nop
nop
and %r15, %r15
lea addresses_D_ht+0xbf5d, %r14
nop
nop
nop
sub $46277, %rcx
movb $0x61, (%r14)
nop
nop
nop
and $34361, %rax
lea addresses_WT_ht+0xe5dd, %rsi
lea addresses_WT_ht+0x5c9d, %rdi
nop
and $41594, %rbx
mov $95, %rcx
rep movsw
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0x121f5, %rax
add $35637, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x19ddd, %rcx
nop
nop
nop
add $42899, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_normal+0x35dd, %r11
nop
nop
and $41716, %r14
movb $0x51, (%r11)
nop
nop
nop
add $5158, %r14

// Load
lea addresses_US+0x1b1fd, %rdx
nop
nop
nop
nop
nop
cmp %rax, %rax
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0x124dd, %r12
nop
nop
add $15279, %rcx
movw $0x5152, (%r12)
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x4cb9, %rdx
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x164dd, %r14
nop
nop
nop
xor $50397, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
sub $37631, %r12

// Store
lea addresses_RW+0x847d, %r14
dec %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
nop
and $59872, %rbp

// Store
lea addresses_PSE+0x6b1d, %rax
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovntdq %ymm3, (%rax)
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x194dd, %r14
nop
nop
nop
and %rax, %rax
vmovntdqa (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'00': 2}
00 00
*/
