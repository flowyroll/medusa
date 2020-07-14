.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x70a, %rsi
lea addresses_A_ht+0x1b08e, %rdi
nop
nop
nop
nop
nop
cmp $43899, %r13
mov $69, %rcx
rep movsl
nop
nop
cmp $38148, %r10
lea addresses_WT_ht+0x1988e, %r14
clflush (%r14)
nop
xor $39291, %r15
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $63853, %rsi
lea addresses_D_ht+0x1258e, %rsi
lea addresses_normal_ht+0xb00e, %rdi
nop
nop
and %r10, %r10
mov $114, %rcx
rep movsw
nop
nop
lfence
lea addresses_UC_ht+0x498e, %rcx
nop
and %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0xa9be, %rdi
nop
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x12b8e, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rcx), %rdi
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x1a88e, %rsi
lea addresses_WT_ht+0x1d40a, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $59181, %r13
mov $13, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1438e, %rsi
lea addresses_WT_ht+0x1e82e, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $109, %rcx
rep movsl
nop
nop
inc %rbx
lea addresses_D_ht+0x1383e, %rsi
lea addresses_D_ht+0x161ae, %rdi
nop
and %r15, %r15
mov $45, %rcx
rep movsw
nop
nop
nop
xor $36754, %r15
lea addresses_WT_ht+0x139fa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %ecx
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x11a8e, %rsi
lea addresses_UC_ht+0xe4ae, %rdi
nop
nop
nop
and $34973, %r14
mov $98, %rcx
rep movsl
nop
nop
nop
inc %r14
lea addresses_D_ht+0x17afe, %rsi
lea addresses_D_ht+0xa01b, %rdi
dec %r15
mov $7, %rcx
rep movsw
nop
add $34086, %rdi
lea addresses_normal_ht+0x1948e, %rdi
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
and $60858, %rcx
lea addresses_UC_ht+0x255a, %rsi
lea addresses_UC_ht+0x16268, %rdi
clflush (%rdi)
dec %rbx
mov $29, %rcx
rep movsw
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x638e, %rbx
nop
nop
nop
nop
nop
sub %r13, %r13
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
cmp $56739, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x1c48e, %r12
nop
cmp %rbp, %rbp
movb $0x51, (%r12)
nop
nop
nop
nop
cmp $39581, %r8

// Faulty Load
lea addresses_WC+0x1008e, %r12
nop
nop
add $64696, %rcx
vmovaps (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'44': 8256, '49': 5340, '00': 8, '46': 8225}
00 46 44 44 44 46 49 49 46 46 44 44 49 49 46 44 44 46 49 49 49 49 46 44 44 49 49 44 44 44 46 46 46 46 44 44 44 46 46 44 44 44 49 49 49 44 44 46 46 46 44 44 49 49 49 46 44 49 49 46 44 49 44 44 44 44 49 49 46 46 44 44 46 46 44 44 49 46 44 49 49 46 44 44 46 46 46 44 44 46 46 46 46 44 44 44 46 49 49 46 44 49 49 46 44 44 49 49 49 49 46 44 44 46 46 46 46 44 44 46 46 49 49 46 44 44 46 46 46 44 44 44 49 49 46 46 44 44 46 46 46 44 46 46 46 44 44 46 46 46 44 44 44 46 49 49 44 44 46 46 46 44 44 49 46 44 44 46 46 46 44 44 44 49 49 46 44 44 49 49 46 44 44 46 46 46 44 44 46 46 46 44 44 46 46 46 44 44 44 49 46 46 44 44 49 49 46 44 44 49 49 49 46 44 44 46 49 49 49 49 46 44 44 46 46 46 46 44 49 49 46 46 44 44 46 49 49 46 44 44 49 49 46 44 49 46 46 44 49 49 49 46 46 44 44 44 46 49 49 46 44 44 46 49 49 46 46 44 44 46 46 44 44 46 46 46 46 46 44 44 44 49 49 46 44 44 46 46 46 46 46 44 44 44 46 49 49 46 44 44 49 49 49 49 46 44 44 46 46 46 44 44 44 46 46 46 44 44 49 49 46 44 44 44 46 46 46 46 44 49 49 46 44 44 44 46 46 49 49 46 44 49 49 46 44 44 46 46 46 46 44 44 49 49 46 46 44 44 49 46 46 44 44 46 46 46 44 44 46 46 46 46 44 44 49 49 46 44 44 44 49 49 46 44 49 49 46 44 44 44 46 44 44 44 46 46 44 49 49 46 44 44 44 49 49 49 49 46 44 44 46 49 46 46 44 44 49 49 46 44 44 44 46 46 46 46 44 49 46 46 44 46 46 46 44 44 44 46 44 44 46 49 49 46 44 44 46 46 44 49 49 49 46 44 44 46 46 44 44 44 49 49 49 46 44 44 46 49 49 49 46 44 44 49 49 49 49 46 44 46 46 46 46 44 46 46 46 44 44 49 49 49 44 44 46 46 46 46 44 44 46 49 49 49 49 46 44 44 44 49 49 49 46 46 44 44 46 46 46 44 44 46 49 49 49 49 46 44 44 46 46 49 49 46 44 44 46 46 46 46 44 44 46 46 46 44 44 46 46 46 46 44 44 44 49 49 49 46 46 44 44 44 49 46 46 44 44 49 49 46 46 44 44 46 46 46 44 44 44 44 44 46 49 49 49 46 44 44 46 49 49 49 44 44 44 46 46 49 46 44 46 46 46 44 44 46 49 49 49 49 46 44 44 46 49 49 49 46 44 44 49 49 49 46 44 44 44 46 46 46 44 44 49 49 46 44 44 49 49 46 44 44 44 46 46 49 46 44 44 49 49 49 46 44 44 46 49 49 49 46 44 44 49 46 46 44 44 44 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 46 44 44 44 49 49 49 46 46 44 44 49 49 46 46 44 44 46 49 49 49 49 46 44 44 46 49 49 46 46 44 44 49 46 44 44 46 49 49 46 44 44 46 49 49 49 46 44 44 46 46 46 44 44 46 49 46 46 44 44 46 49 46 46 44 44 44 46 46 46 46 44 44 46 49 49 49 46 44 44 49 46 46 44 44 46 46 46 44 44 44 46 46 46 46 44 44 44 46 46 46 46 44 44 44 49 49 49 46 44 44 49 49 46 46 44 44 49 49 49 44 44 44 46 44 44 44 46 44 44 46 46 46 44 44 46 46 46 44 44 44 46 46 46 44 44 49 49 46 44 44 46 46 46 44 44 44 46 46 46 46 44 49 49 46 44 44 46 49 49 49 44 44 46 49 49 49 46 46 44 44 49 49 49 46 46 44 44 49 49 46 44 44 46 46 46 44 44 44 46 46 46 46 44 49 49 49 46 44 44 44 46 49 49 46 44 44 49 49 49 46 44 44 44 46 44 46 46 46 44 44 44 49 46 46 46 44 46 44 44 44 46 46 46 44 44 46 46 44 44 49 49 46 44 44 46 46 46 44 44 49 49 49 46 44 44 44 46 44 44 44 46 44 44 44 46 46 46 44 44 49 49 46 46 44 44 44 46 49 49 46 44 44 46 49 49 49 46 44 44 44 49 46 44 44 46 49 49 46 46 44 44 46 46 44 44 49
*/
