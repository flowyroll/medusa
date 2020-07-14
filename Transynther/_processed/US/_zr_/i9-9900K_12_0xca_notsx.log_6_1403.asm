.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17f73, %rsi
lea addresses_normal_ht+0x18b73, %rdi
nop
nop
and $24645, %rbp
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xd973, %rsi
nop
nop
nop
nop
nop
xor $15308, %rbx
mov (%rsi), %r10w
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1aa97, %rcx
nop
xor %r12, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
add $38173, %rsi
lea addresses_UC_ht+0x17f73, %rsi
lea addresses_A_ht+0x18f73, %rdi
nop
cmp $26105, %r15
mov $88, %rcx
rep movsq
nop
add %r10, %r10
lea addresses_UC_ht+0x1e025, %rsi
lea addresses_normal_ht+0x773, %rdi
nop
xor $33437, %r15
mov $119, %rcx
rep movsq
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1cf73, %rdi
nop
nop
nop
nop
and $35376, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add $1581, %rsi
lea addresses_UC_ht+0xd595, %r12
nop
nop
nop
nop
dec %rcx
movb (%r12), %r10b
nop
nop
nop
add $8798, %rdi
lea addresses_D_ht+0x12773, %rbx
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
cmp $40232, %rbx
lea addresses_normal_ht+0x19df3, %rbx
clflush (%rbx)
inc %r10
mov (%rbx), %edi
cmp %rcx, %rcx
lea addresses_D_ht+0x11b73, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%r15), %bl
nop
nop
nop
nop
xor $23631, %r10
lea addresses_A_ht+0x6873, %rbx
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rbx)
nop
nop
dec %r12
lea addresses_WT_ht+0x5cf3, %r12
nop
nop
cmp $35614, %rdi
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
and $50907, %r12
lea addresses_WC_ht+0x56f3, %r12
sub $33752, %rsi
movb (%r12), %r10b
nop
nop
sub $8508, %r10
lea addresses_D_ht+0x6373, %rcx
clflush (%rcx)
nop
nop
xor $47472, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
and %r12, %r12
lea addresses_WT_ht+0x8141, %rsi
nop
nop
nop
and %rcx, %rcx
mov (%rsi), %bx
nop
nop
nop
nop
nop
xor $10865, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x13773, %r10
nop
nop
dec %rdx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'00': 6}
00 00 00 00 00 00
*/
