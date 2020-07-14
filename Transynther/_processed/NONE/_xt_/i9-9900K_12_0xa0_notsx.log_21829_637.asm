.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x79e1, %rsi
lea addresses_WC_ht+0x1e5e1, %rdi
nop
cmp %r9, %r9
mov $123, %rcx
rep movsq
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x2361, %rax
nop
cmp $3449, %r8
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x192c5, %rsi
lea addresses_normal_ht+0x13a81, %rdi
nop
sub $21433, %rbx
mov $119, %rcx
rep movsq
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xd161, %rbx
nop
nop
nop
nop
xor $1430, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x431f, %rsi
lea addresses_D_ht+0x7361, %rdi
nop
nop
nop
nop
nop
and $54453, %r9
mov $121, %rcx
rep movsq
sub $3513, %rax
lea addresses_normal_ht+0xb761, %r9
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x10f61, %rsi
lea addresses_D_ht+0x8761, %rdi
clflush (%rsi)
sub $38287, %rax
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0xf961, %r8
xor %rbx, %rbx
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
and $50334, %rsi
lea addresses_WT_ht+0xd561, %rdi
nop
nop
nop
sub %r8, %r8
mov (%rdi), %r9d
nop
nop
nop
and $39683, %r14
lea addresses_WT_ht+0x15a01, %rsi
lea addresses_WC_ht+0x14f61, %rdi
nop
cmp %rbx, %rbx
mov $112, %rcx
rep movsl
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0xc649, %rbx
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
sub $50738, %r8
lea addresses_A_ht+0x1cbe1, %rsi
lea addresses_WC_ht+0x11c61, %rdi
nop
nop
nop
nop
nop
cmp $51141, %r9
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1e4c1, %r9
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r9)
nop
nop
nop
nop
and $4978, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0xe1, %r13
nop
nop
cmp $13321, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
sub %rdi, %rdi

// Store
mov $0x461, %rcx
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
sub $19353, %r15

// Load
lea addresses_D+0xe2e1, %rcx
nop
nop
add $5721, %rbx
movb (%rcx), %al
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_normal+0x1fb61, %rbx
nop
nop
and %r13, %r13
mov (%rbx), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
