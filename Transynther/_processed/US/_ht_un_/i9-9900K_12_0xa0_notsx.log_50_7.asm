.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17727, %r12
nop
add $55531, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
add $24201, %rsi
lea addresses_WT_ht+0x9f47, %rsi
lea addresses_WT_ht+0x1657, %rdi
nop
add %rax, %rax
mov $86, %rcx
rep movsw
add $12524, %rdi
lea addresses_A_ht+0x8647, %rsi
and %r9, %r9
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1eea7, %rdi
clflush (%rdi)
and %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
cmp $44328, %rdi
lea addresses_WT_ht+0xab47, %rcx
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
dec %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0xc747, %rdx
clflush (%rdx)
nop
nop
dec %r15
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 10}}
{'60': 26, '46': 23, '49': 1}
60 46 60 60 46 46 46 60 60 60 46 60 46 60 60 46 46 46 60 60 46 46 60 46 46 60 46 46 60 46 60 60 60 46 49 46 60 60 60 60 60 60 60 46 60 46 46 46 46 60
*/
