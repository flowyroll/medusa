.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14af4, %r10
nop
sub $21815, %r11
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
cmp %rax, %rax
lea addresses_normal_ht+0xd294, %rdi
clflush (%rdi)
and %r9, %r9
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
and $3949, %r12
lea addresses_WT_ht+0x1c606, %r11
dec %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r11)
sub %r12, %r12
lea addresses_A_ht+0x1d058, %rsi
lea addresses_A_ht+0x66f4, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $67, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_A_ht+0x76f4, %rsi
lea addresses_WC_ht+0x1174, %rdi
clflush (%rdi)
inc %r10
mov $18, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xa8d4, %rax
nop
nop
inc %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rax
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
and $8490, %rax
lea addresses_A_ht+0x18114, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
xor $4981, %rdi
lea addresses_WC_ht+0xcaf4, %rax
clflush (%rax)
nop
sub $28796, %r9
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
cmp %r11, %r11
lea addresses_D_ht+0x2634, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %eax
nop
nop
nop
xor $28651, %rsi
lea addresses_A_ht+0x37b4, %r12
nop
nop
and $52393, %r10
mov (%r12), %si
nop
nop
nop
and $53447, %r12
lea addresses_normal_ht+0x94f4, %rsi
lea addresses_A_ht+0x1e8e4, %rdi
clflush (%rsi)
nop
nop
nop
xor $22398, %r11
mov $80, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1c934, %rdi
nop
nop
nop
nop
xor $27232, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x18cf4, %r12
nop
nop
nop
nop
nop
and $26041, %r10
movw $0x6162, (%r12)
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xa0f4, %rsi
lea addresses_WC+0xda34, %rdi
and $4586, %rbp
mov $25, %rcx
rep movsb
nop
nop
nop
cmp $64127, %r8

// Store
lea addresses_D+0x6ef4, %r8
clflush (%r8)
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r8)
nop
nop
cmp %rcx, %rcx

// Faulty Load
mov $0x2f4, %rbp
nop
nop
dec %rdi
movb (%rbp), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'00': 1}
00
*/
