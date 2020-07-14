.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xeea3, %rsi
lea addresses_D_ht+0xa923, %rdi
nop
nop
nop
nop
xor $50727, %rax
mov $64, %rcx
rep movsq
nop
add %r12, %r12
lea addresses_normal_ht+0x9ea3, %rbp
nop
nop
nop
nop
and $38237, %rdi
movb $0x61, (%rbp)
add %rdi, %rdi
lea addresses_D_ht+0x5085, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $29686, %rbp
movl $0x61626364, (%r12)
nop
nop
nop
inc %rax
lea addresses_A_ht+0x2ae3, %r12
clflush (%r12)
nop
nop
xor $38818, %rbp
mov (%r12), %rdi
nop
nop
nop
nop
xor $1124, %rax
lea addresses_WT_ht+0x1b5a3, %rdi
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x1e453, %r12
nop
inc %rax
mov (%r12), %r8w
nop
nop
nop
sub $25593, %rbp
lea addresses_WT_ht+0xa193, %rsi
lea addresses_UC_ht+0xb2d7, %rdi
nop
cmp $55389, %rax
mov $79, %rcx
rep movsl
nop
and %rdi, %rdi
lea addresses_D_ht+0x1de3e, %rdi
nop
and $17067, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rdi)
nop
inc %rcx
lea addresses_A_ht+0x78e3, %r12
nop
nop
nop
nop
and $10759, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x119bb, %rsi
lea addresses_D_ht+0x120a3, %rdi
clflush (%rdi)
nop
nop
nop
xor %r14, %r14
mov $61, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $64158, %r14
lea addresses_A_ht+0x8523, %r8
add %rsi, %rsi
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x14e63, %rcx
nop
nop
nop
nop
inc %r14
movb $0x61, (%rcx)
xor $23636, %r14
lea addresses_normal_ht+0xac83, %rcx
cmp %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x168f3, %r14
nop
nop
nop
nop
nop
xor $22891, %rdi
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rcx
sub %r12, %r12
lea addresses_A_ht+0x1e0e3, %rsi
sub %rax, %rax
movb (%rsi), %r14b
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x1dd23, %rbp
nop
xor $28378, %rsi
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_UC+0x42a3, %r13
nop
nop
add $43957, %r9
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'45': 74, '49': 10761, '00': 10994}
00 49 00 00 49 00 00 49 49 49 49 00 00 00 00 49 00 49 49 00 00 00 00 00 00 49 49 49 00 49 49 49 49 49 49 00 49 49 00 00 00 00 49 49 49 00 00 00 49 49 49 00 00 00 49 49 49 00 00 00 00 49 49 49 49 49 49 49 00 00 00 49 49 49 49 00 00 00 00 49 00 00 49 00 49 49 00 00 00 00 49 49 49 00 00 00 49 49 00 49 49 49 00 00 00 00 00 49 49 00 49 49 00 49 49 00 49 49 49 49 00 00 00 49 00 49 00 00 49 49 00 49 49 49 49 49 00 49 49 00 00 00 00 00 00 49 49 00 00 00 49 00 49 00 49 49 00 49 49 49 49 49 00 00 00 00 00 49 00 49 49 49 00 49 49 00 00 00 49 00 49 49 00 49 49 49 49 00 00 49 00 49 00 00 49 00 00 00 49 00 00 49 49 49 00 49 49 49 00 49 00 00 00 00 49 00 49 49 00 00 00 49 00 00 49 00 49 00 00 00 00 00 49 49 00 00 00 00 49 49 49 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 49 49 00 00 00 00 49 49 49 49 49 00 00 00 49 49 49 49 49 49 00 49 49 49 00 49 49 49 00 00 00 49 49 00 00 00 49 49 49 49 49 49 00 00 00 49 00 49 00 49 49 49 49 00 49 49 00 00 00 49 00 49 49 49 00 49 00 00 00 00 49 00 49 00 49 49 49 49 00 00 00 00 49 49 00 49 49 49 49 49 49 49 00 00 00 00 00 49 49 00 00 00 00 49 49 00 49 49 00 00 00 00 00 49 49 49 49 49 00 00 00 00 49 49 00 49 49 49 00 00 00 00 49 00 49 49 00 00 49 00 49 00 00 00 00 49 00 00 49 49 00 00 00 49 49 00 00 00 49 49 00 49 49 00 49 49 00 00 00 00 00 49 00 49 00 00 49 49 00 49 49 49 49 00 49 00 49 49 00 49 49 00 00 00 49 49 49 00 00 00 00 00 00 49 49 00 00 00 45 00 49 49 49 49 00 00 49 00 49 00 49 49 00 00 49 49 00 00 00 00 49 49 00 00 00 00 00 49 00 00 49 49 00 00 49 49 00 00 49 49 49 49 00 00 00 00 49 00 49 49 49 00 00 49 00 49 49 00 00 00 00 00 49 49 49 00 49 49 00 49 49 00 00 00 49 49 49 49 49 00 00 49 49 49 00 00 00 00 49 49 00 49 49 49 00 00 49 49 49 00 49 49 00 00 00 49 00 00 49 49 00 00 00 00 00 49 49 00 00 00 49 49 00 00 49 49 00 49 00 49 49 49 00 49 49 49 49 00 00 00 00 00 49 49 49 00 00 49 49 00 49 49 49 49 00 00 00 49 49 49 49 00 49 00 49 00 49 00 00 00 00 00 49 49 49 49 00 00 00 00 49 49 49 49 49 49 00 00 00 49 49 49 00 49 49 00 00 49 49 49 49 00 49 49 00 00 49 00 00 00 00 45 49 49 00 49 49 00 00 00 00 49 49 00 49 00 49 49 00 00 00 00 49 00 49 49 49 00 00 49 49 00 49 49 00 00 49 00 49 00 00 00 49 49 00 00 00 49 49 49 49 00 00 00 49 00 49 49 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 49 49 49 49 49 49 00 49 00 49 00 49 00 00 00 49 00 49 49 49 49 00 00 00 49 00 00 49 49 00 00 00 49 00 49 49 00 00 00 00 00 49 00 00 00 49 49 00 00 00 49 49 00 45 00 00 00 49 49 49 49 49 49 00 00 00 49 49 00 00 00 00 49 49 49 00 49 49 00 49 00 00 45 00 00 49 00 00 49 49 49 00 45 00 00 49 00 49 49 49 49 49 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 49 49 49 00 00 00 00 49 49 49 00 00 00 49 00 49 00 49 49 00 00 00 00 49 49 49 00 00 49 49 00 49 00 49 00 49 49 49 49 00 00 00 00 49 49 00 00 00 49 00 00 00 49 49 00 49 49 49 49 49 00 00 00 49 00 49 49 49 49 00 00 00 00 00 49 00 00 00 00 49 49 00 49 49 00 49 49 00 49 00 49 49 00 00 00 00 49 49 00 49 00 49 49 49 49 49 00 00 00 00 00 49 00 49 49 00 49 49 00 49 00 00 00 00 00 49
*/
