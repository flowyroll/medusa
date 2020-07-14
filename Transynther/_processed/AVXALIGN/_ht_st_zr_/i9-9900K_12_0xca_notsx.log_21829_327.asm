.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xda47, %r9
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r9)
nop
nop
cmp $17525, %r12
lea addresses_D_ht+0x2447, %r9
nop
nop
and %rax, %rax
movw $0x6162, (%r9)
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1cde7, %rsi
cmp %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
and $27449, %r13
lea addresses_UC_ht+0xc047, %rbx
clflush (%rbx)
add %r9, %r9
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r10
nop
sub $59880, %r12
lea addresses_WT_ht+0x6c47, %rsi
lea addresses_UC_ht+0x181aa, %rdi
nop
nop
nop
and %r13, %r13
mov $22, %rcx
rep movsw
nop
nop
nop
cmp $51226, %r13
lea addresses_WT_ht+0x7d8f, %rsi
and $52851, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
add %rax, %rax
lea addresses_D_ht+0xffc7, %rsi
lea addresses_WT_ht+0x463d, %rdi
nop
nop
inc %r12
mov $36, %rcx
rep movsw
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx

// Load
lea addresses_PSE+0x13ecf, %rbp
nop
nop
nop
nop
inc %r15
mov (%rbp), %ecx
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
mov $0xe47, %rbx
nop
nop
cmp %rbp, %rbp
movaps (%rbx), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'46': 13180, '00': 8290, '34': 4, '47': 352, '30': 3}
00 00 46 46 46 46 00 46 00 46 46 46 46 00 46 00 00 46 46 46 46 46 47 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 47 46 00 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 46 46 00 46 46 46 47 46 00 46 46 00 46 00 00 46 46 00 46 00 00 46 46 00 46 46 00 46 00 00 00 46 46 00 46 46 46 46 46 46 00 46 00 46 00 46 46 46 47 46 00 46 46 46 46 00 46 46 46 46 00 46 46 46 46 00 00 46 46 46 46 46 00 00 46 46 00 46 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 46 47 46 00 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 00 00 46 00 46 00 00 00 46 00 46 00 46 46 00 46 00 46 00 00 46 46 46 00 46 46 00 00 46 00 46 46 46 46 46 00 46 00 46 46 00 00 46 00 46 00 46 00 46 00 46 46 46 47 46 46 00 46 46 46 46 46 46 46 00 47 46 00 46 46 46 00 46 00 00 00 46 00 46 00 46 46 46 00 46 47 46 00 46 00 00 46 00 46 46 46 00 00 00 00 46 46 00 46 00 46 00 46 46 00 46 00 46 47 46 46 00 00 46 00 46 46 46 46 47 46 00 46 46 46 46 46 46 00 46 46 46 46 47 46 00 46 00 00 46 46 46 00 46 00 46 00 46 00 46 46 46 46 00 46 46 00 46 46 00 46 00 00 00 46 46 00 46 46 46 00 46 46 00 46 46 46 46 46 00 46 00 46 00 46 46 46 47 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 00 00 46 00 00 46 46 00 46 46 00 00 46 46 00 46 46 46 46 00 00 46 46 46 46 00 46 46 46 00 46 46 46 46 46 00 46 00 00 46 47 46 46 46 46 00 46 46 00 00 46 46 46 46 46 00 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 00 46 00 00 46 46 00 46 46 00 46 46 46 46 46 00 00 00 46 00 46 46 46 46 46 46 00 00 46 00 00 00 46 00 46 46 46 00 46 46 46 46 00 46 46 46 47 46 00 46 46 00 46 46 46 46 00 46 46 46 00 00 46 46 46 46 46 46 46 00 47 46 00 00 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 00 46 46 46 00 00 00 46 46 46 00 46 00 46 00 46 00 00 00 46 00 46 00 00 00 46 46 46 46 46 46 00 46 47 46 46 46 46 00 00 46 46 46 46 46 46 00 00 00 46 46 46 00 00 46 00 46 46 46 00 46 00 00 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 46 46 00 46 46 46 46 00 46 00 46 00 46 46 46 46 00 46 00 00 46 46 00 00 46 46 00 00 46 00 46 00 46 46 46 46 46 00 00 46 00 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 00 00 47 46 46 00 46 46 00 46 46 46 46 46 46 46 00 00 46 46 47 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 47 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 00 46 00 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 00 46 46 00 46 46 00 47 46 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 00 46 00 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 00 46 46 46 46 46 46 46 46 00 00 46 00 00 00 46 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
