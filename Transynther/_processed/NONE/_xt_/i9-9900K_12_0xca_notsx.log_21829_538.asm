.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x482f, %rsi
lea addresses_A_ht+0x79ef, %rdi
nop
nop
nop
nop
nop
cmp $22662, %r8
mov $119, %rcx
rep movsw
nop
xor %rcx, %rcx
lea addresses_D_ht+0xaa6f, %r12
nop
and $11048, %r13
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
and $27451, %rcx
lea addresses_A_ht+0x4e6f, %rsi
lea addresses_WT_ht+0x1a018, %rdi
nop
nop
nop
nop
nop
xor $29082, %rax
mov $71, %rcx
rep movsw
nop
nop
nop
sub $2219, %r14
lea addresses_UC_ht+0xef4f, %rdi
nop
nop
nop
nop
nop
sub $18331, %rcx
movb (%rdi), %r13b
nop
nop
nop
nop
xor $20402, %rax
lea addresses_WT_ht+0x5d33, %rax
nop
nop
dec %rcx
movb (%rax), %r14b
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1844f, %rsi
lea addresses_WC_ht+0xd06f, %rdi
clflush (%rsi)
nop
nop
nop
xor %r8, %r8
mov $73, %rcx
rep movsb
nop
and $55029, %rax
lea addresses_WT_ht+0x1d66f, %rcx
nop
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%rcx)
nop
nop
add $48244, %rax
lea addresses_D_ht+0x1157f, %r8
nop
nop
xor %r12, %r12
mov (%r8), %cx
nop
nop
dec %rdi
lea addresses_UC_ht+0x1366f, %rsi
lea addresses_WC_ht+0x1b50f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
mov $49, %rcx
rep movsq
nop
nop
nop
sub $19585, %r14
lea addresses_A_ht+0x1e9ff, %r14
clflush (%r14)
nop
nop
nop
and $31765, %r13
mov (%r14), %r12d
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x18e6f, %r12
nop
inc %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
add $23568, %r13
lea addresses_normal_ht+0x888f, %rsi
lea addresses_normal_ht+0xd40, %rdi
clflush (%rsi)
nop
nop
sub $37893, %r8
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x1de6f, %r12
clflush (%r12)
nop
nop
nop
dec %r14
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
sub $19471, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xd1ef, %rsi
lea addresses_A+0x2b8f, %rdi
nop
inc %rbx
mov $34, %rcx
rep movsq
nop
nop
dec %r9

// Store
lea addresses_A+0x126f, %rsi
nop
nop
and %r11, %r11
movb $0x51, (%rsi)
nop
nop
nop
nop
cmp $14013, %r11

// Load
lea addresses_PSE+0x15e6f, %rsi
nop
nop
inc %r9
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
sub $3991, %r11

// Store
lea addresses_D+0x1566f, %r10
nop
nop
nop
sub $61482, %r9
movb $0x51, (%r10)
nop
nop
and $12017, %rbx

// Store
lea addresses_D+0x1026f, %rcx
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x15e6f, %rsi
nop
nop
and %rdi, %rdi
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
