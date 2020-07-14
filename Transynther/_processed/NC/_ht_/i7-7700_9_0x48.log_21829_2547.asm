.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ae15, %r10
nop
nop
and $14850, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x18e15, %rsi
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x1888d, %rsi
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rsi)
nop
add %r10, %r10
lea addresses_WC_ht+0x12163, %rsi
nop
nop
nop
nop
nop
lfence
mov (%rsi), %rbp
nop
sub $59389, %r10
lea addresses_normal_ht+0x18a9d, %rsi
lea addresses_WT_ht+0x10f95, %rdi
nop
and $17020, %rbp
mov $14, %rcx
rep movsb
xor $50248, %rbx
lea addresses_normal_ht+0xe475, %rbp
sub $35996, %rbx
movw $0x6162, (%rbp)
nop
nop
sub $61773, %rbx
lea addresses_A_ht+0x17317, %rbx
nop
nop
nop
inc %rcx
mov (%rbx), %edi
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x1bbb5, %rbp
nop
nop
nop
nop
cmp $2242, %r12
movw $0x6162, (%rbp)
nop
nop
nop
sub $451, %rbx
lea addresses_WC_ht+0x1a07d, %r10
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1c15, %rsi
lea addresses_normal_ht+0x18615, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $102, %rcx
rep movsl
nop
nop
inc %r12
lea addresses_normal_ht+0x207d, %rbp
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
cmp %r12, %r12
lea addresses_normal_ht+0xbb15, %r12
clflush (%r12)
cmp %rdi, %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
sub $3189, %rbx
lea addresses_WC_ht+0x17e15, %rsi
nop
xor %r12, %r12
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
nop
nop
and $64992, %r9
lea addresses_normal_ht+0x182d5, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x11b95, %rsi
lea addresses_normal_ht+0x130d5, %rdi
clflush (%rdi)
nop
xor %r10, %r10
mov $98, %rcx
rep movsw
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0x3675, %rsi
nop
nop
nop
add %r13, %r13
movb $0x51, (%rsi)
sub $60310, %rcx

// Load
lea addresses_WT+0x1a615, %r9
nop
nop
nop
inc %r15
mov (%r9), %r13
nop
add %rcx, %rcx

// Faulty Load
mov $0x5572170000000e15, %rcx
nop
nop
nop
nop
nop
and $16185, %rax
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'44': 10699, '46': 11130}
46 44 44 44 46 44 44 44 46 44 44 46 46 46 46 46 46 46 44 46 44 46 44 46 44 44 44 44 44 46 46 44 46 44 46 44 46 44 46 44 46 44 44 46 46 46 46 46 44 46 46 46 44 46 44 44 46 44 46 44 44 46 46 46 44 46 44 46 44 46 44 46 46 46 46 44 46 46 46 46 46 44 44 44 46 46 46 44 46 46 44 46 46 46 44 44 44 46 44 46 44 44 44 46 44 44 46 44 46 46 46 44 46 44 44 46 44 46 44 44 46 44 46 44 46 44 44 46 46 46 46 46 44 46 44 46 44 44 44 46 46 44 46 44 46 44 44 44 46 46 44 44 44 44 46 46 44 46 46 44 44 46 46 46 44 44 46 46 46 44 46 44 46 46 46 44 44 44 46 44 46 44 44 44 46 44 46 44 46 46 44 44 44 46 44 46 44 46 44 46 44 46 46 44 46 44 44 44 46 46 46 46 46 46 46 44 46 44 46 46 44 44 46 46 46 44 46 44 44 44 46 46 44 46 46 46 46 44 44 46 46 46 44 44 44 46 44 44 46 44 46 46 46 44 46 44 46 46 44 44 44 44 46 44 46 46 46 46 44 44 44 44 44 46 44 46 44 46 44 44 44 44 46 44 46 46 46 44 44 46 46 46 44 44 44 46 44 46 44 46 44 44 44 46 44 46 44 44 46 44 46 44 46 46 46 44 44 44 46 46 46 44 44 44 44 46 44 46 46 44 46 44 46 44 44 44 46 44 44 44 46 44 46 46 46 46 44 46 46 46 44 46 44 44 44 46 46 44 46 44 46 44 46 44 46 46 44 46 44 46 44 44 44 44 46 44 46 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 46 46 46 46 44 46 44 46 44 46 46 44 44 46 44 46 44 44 44 46 44 46 46 44 46 44 46 44 44 46 44 46 46 44 46 46 46 44 46 44 46 44 46 44 44 44 46 44 46 46 44 46 46 46 44 46 44 46 46 44 46 46 44 44 46 44 46 44 44 44 44 44 46 44 44 44 44 46 44 46 44 46 44 46 44 46 44 44 44 46 44 44 46 44 46 46 46 44 46 44 46 44 46 44 44 46 46 46 44 46 44 44 46 44 46 46 46 44 46 44 46 46 44 44 44 44 44 44 44 46 44 46 44 46 44 46 44 44 46 46 46 46 46 44 46 44 46 44 44 44 46 46 46 46 44 46 44 46 44 44 46 44 44 44 44 46 44 46 46 44 44 44 46 44 44 44 46 46 44 46 46 46 46 46 44 46 46 46 44 44 44 44 44 46 46 46 44 44 46 46 46 44 44 44 44 46 46 46 44 46 44 46 44 46 44 44 46 46 46 46 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 46 44 46 44 46 46 46 46 44 46 44 44 44 46 44 44 46 46 46 46 46 46 44 44 46 46 46 46 46 46 44 44 44 44 44 46 46 46 44 44 46 46 44 46 44 46 46 44 46 44 46 44 44 44 46 46 46 46 44 46 44 46 44 44 44 46 44 46 44 46 44 44 44 46 44 46 46 46 46 46 46 44 44 46 44 44 44 44 46 44 46 44 44 46 44 46 46 46 46 46 44 46 44 46 44 46 44 44 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 44 46 44 44 46 44 46 44 44 46 44 44 46 44 46 44 44 46 46 46 46 46 44 46 44 46 46 46 44 44 44 46 44 46 46 44 46 44 46 44 46 44 46 44 46 44 46 46 44 46 46 46 44 46 44 46 44 46 44 46 46 44 46 44 46 44 46 44 46 44 44 44 44 46 46 46 44 46 44 46 44 46 44 46 44 44 46 44 46 46 46 46 46 44 46 44 44 44 46 46 44 44 44 46 44 46 44 46 46 46 44 44 44 46 44 46 46 46 46 44 46 44 44 44 46 44 44 44 46 46 46 44 44 46 44 46 44 46 44 46 44 44 44 46 46 46 46 44 44 44 46 44 46 44 44 44 46 46 44 46 44 44 44 46 46 46 46 44 44 46 44 46 46 44 44 44 44 46 46 46 46 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 46 46 46 44 44 44 44 46 44 46 44 46 44 44 46 46 46 44 46 46 46 44 46 44 44 46 44 46 44 46 44 46 44 44 46 44 46 46 46 44 46 44 46 46 44 46 46 46 44 46 44
*/
