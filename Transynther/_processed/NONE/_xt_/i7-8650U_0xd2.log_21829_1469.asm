.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x91b4, %rdi
nop
nop
nop
nop
nop
and $39677, %rcx
movl $0x61626364, (%rdi)
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1df44, %r15
sub $39096, %rcx
mov (%r15), %r11
nop
nop
nop
nop
add $49908, %r11
lea addresses_WT_ht+0x1ade4, %r15
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x10cc2, %rcx
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x95b2, %r11
nop
nop
nop
nop
nop
sub $23783, %r14
movl $0x61626364, (%r11)
sub %rdi, %rdi
lea addresses_D_ht+0x14ce7, %r14
clflush (%r14)
xor %r10, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
cmp $50384, %r15
lea addresses_UC_ht+0x66e4, %r14
nop
xor $34372, %rdi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
sub $2910, %r10
lea addresses_A_ht+0xa73c, %rdi
and %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1aa4, %r14
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r14)
cmp $63850, %r10
lea addresses_WT_ht+0x5924, %rsi
lea addresses_A_ht+0x106a4, %rdi
clflush (%rsi)
nop
nop
nop
and %r14, %r14
mov $49, %rcx
rep movsw
nop
nop
sub $26246, %r13
lea addresses_WT_ht+0x7982, %rcx
nop
mfence
mov (%rcx), %r10
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x11214, %r13
nop
dec %r15
movb $0x61, (%r13)
nop
nop
inc %r14
lea addresses_normal_ht+0x5707, %rcx
nop
nop
nop
nop
nop
cmp $64152, %r15
mov (%rcx), %r10
nop
nop
xor $61643, %r14
lea addresses_WC_ht+0x13ea4, %r11
nop
cmp %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r11
movntdq %xmm6, (%r11)
sub $53931, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x1d2a4, %rdi
nop
nop
nop
nop
and $51629, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x196a4, %r13
nop
and $2708, %rax
movw $0x5152, (%r13)
nop
cmp $55102, %r8

// Faulty Load
lea addresses_PSE+0x14aa4, %r12
nop
nop
nop
add %rbx, %rbx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
