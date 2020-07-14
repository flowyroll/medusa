.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x163fb, %r12
nop
xor $58736, %r10
mov $0x6162636465666768, %r15
movq %r15, (%r12)
nop
nop
and %rax, %rax
lea addresses_UC_ht+0xbbbb, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $20468, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rsi)
cmp $45124, %r10
lea addresses_D_ht+0x10af7, %rsi
lea addresses_WC_ht+0x1af3d, %rdi
cmp %r15, %r15
mov $22, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x3afb, %rcx
nop
nop
lfence
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x12dfb, %rdi
nop
nop
mfence
movb (%rdi), %r9b
nop
sub %r15, %r15
lea addresses_normal_ht+0x134db, %rsi
lea addresses_WT_ht+0xab7b, %rdi
nop
add %r9, %r9
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
add $24764, %r10
lea addresses_WT_ht+0x100fb, %rsi
lea addresses_normal_ht+0x49fb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $35512, %r9
mov $14, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x36fb, %rsi
lea addresses_WC_ht+0x10353, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $15, %rcx
rep movsb
sub $38357, %rdi
lea addresses_A_ht+0x1c40b, %rsi
lea addresses_WC_ht+0x1d3fb, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $63, %rcx
rep movsq
nop
nop
nop
cmp $35442, %rsi
lea addresses_WC_ht+0x1a2fb, %rax
and $9749, %rcx
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
mfence
lea addresses_D_ht+0x1174d, %r9
nop
nop
nop
xor %r15, %r15
mov (%r9), %ax
nop
nop
nop
nop
sub $51692, %r10
lea addresses_D_ht+0x19afb, %r10
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%r10)
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x603f, %rsi
lea addresses_WT_ht+0x3afb, %rdi
nop
nop
xor $32099, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
nop
xor $59251, %r9
lea addresses_WT_ht+0x1dfdf, %r15
add %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r15)
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1ae2d, %r9
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x2e19, %r13
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_D+0x9c7b, %r12
nop
sub $20378, %r13
movb (%r12), %r8b
nop
nop
dec %r8

// Load
lea addresses_US+0xbefb, %r12
add $9770, %r11
movb (%r12), %r8b
and $60519, %r11

// Store
lea addresses_WT+0x11d59, %r13
nop
nop
nop
cmp $63337, %rbx
movl $0x51525354, (%r13)
cmp $22391, %r12

// Faulty Load
lea addresses_D+0x4afb, %rdx
nop
cmp %rbx, %rbx
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
