.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b214, %rax
add $3719, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rax)
mfence
lea addresses_WT_ht+0x15494, %rdi
nop
dec %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x6e94, %rdi
nop
nop
nop
nop
nop
and $6907, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
cmp $62403, %rax
lea addresses_D_ht+0xf91b, %rsi
lea addresses_normal_ht+0x1c294, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $117, %rcx
rep movsw
nop
nop
nop
and $43500, %r9
lea addresses_UC_ht+0x2394, %rsi
lea addresses_A_ht+0x15c94, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $48, %rcx
rep movsb
nop
inc %r9
lea addresses_WC_ht+0x13ed8, %rdx
nop
nop
nop
inc %r9
movl $0x61626364, (%rdx)
nop
nop
nop
nop
cmp $64521, %rsi
lea addresses_normal_ht+0x103e0, %rax
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rax)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x11e94, %rsi
lea addresses_WC_ht+0x3cd4, %rdi
cmp %rax, %rax
mov $62, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1d3b, %r15
nop
nop
nop
nop
nop
and $54294, %rsi
movw $0x6162, (%r15)
and $9060, %rdi
lea addresses_D_ht+0x11a54, %rsi
lea addresses_WC_ht+0x19bcc, %rdi
nop
nop
add %r15, %r15
mov $33, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x16894, %rcx
nop
and $7661, %rsi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
cmp $23296, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1f494, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_US+0x18694, %rcx
nop
cmp $41485, %rdi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'46': 5}
46 46 46 46 46
*/
