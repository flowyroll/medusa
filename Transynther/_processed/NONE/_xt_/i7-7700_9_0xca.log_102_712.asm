.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15197, %rsi
lea addresses_UC_ht+0x12f9b, %rdi
and %r10, %r10
mov $16, %rcx
rep movsw
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x5e09, %rdi
nop
nop
nop
nop
and $33840, %r14
movw $0x6162, (%rdi)
nop
cmp $24479, %rcx
lea addresses_normal_ht+0x4f77, %r14
nop
sub %rdx, %rdx
movl $0x61626364, (%r14)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xc177, %rsi
nop
nop
and %r10, %r10
movb $0x61, (%rsi)
nop
nop
and $12948, %r14
lea addresses_D_ht+0x12b77, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0xb77, %r14
nop
nop
cmp $6687, %rcx
movl $0x51525354, (%r14)
cmp %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x1e377, %rdi
nop
nop
nop
add %rcx, %rcx
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'33': 102}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
