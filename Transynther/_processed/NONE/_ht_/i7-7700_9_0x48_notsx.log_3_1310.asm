.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1b1f, %rax
xor $62374, %rdx
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
xor $64652, %r14
lea addresses_WT_ht+0xa8ff, %rsi
lea addresses_D_ht+0xc9bf, %rdi
dec %r8
mov $17, %rcx
rep movsb
cmp $18545, %rax
lea addresses_D_ht+0x1b7e1, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %r14, %r14
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
and $38480, %rax
lea addresses_WT_ht+0xbd9f, %rsi
lea addresses_WT_ht+0x1b8ff, %rdi
sub %r8, %r8
mov $46, %rcx
rep movsl
cmp $15426, %rdx
lea addresses_A_ht+0xcd9f, %rsi
lea addresses_UC_ht+0x14b1f, %rdi
clflush (%rdi)
nop
nop
xor %r10, %r10
mov $32, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_WC_ht+0x691f, %rsi
lea addresses_WT_ht+0x190ff, %rdi
nop
nop
dec %r10
mov $109, %rcx
rep movsl
nop
nop
xor $8788, %rdx
lea addresses_WC_ht+0x112cf, %rcx
nop
and %rdi, %rdi
movw $0x6162, (%rcx)
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x1f2bf, %rdx
nop
nop
nop
and $57904, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovaps %ymm7, (%rdx)
nop
nop
nop
dec %rax

// Store
lea addresses_A+0xbb1f, %r8
nop
and %rbx, %rbx
movl $0x51525354, (%r8)
and $33082, %rax

// Store
lea addresses_PSE+0x1d007, %rax
sub $73, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rax)
nop
nop
sub %r9, %r9

// Store
lea addresses_US+0x7bdf, %r9
nop
xor $42329, %rdi
movl $0x51525354, (%r9)
nop
nop
cmp $57622, %r9

// Faulty Load
lea addresses_A+0xbb1f, %rax
xor $35176, %r8
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'45': 3}
45 45 45
*/
