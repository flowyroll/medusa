.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x19587, %rax
nop
nop
add $12359, %r15
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x3d07, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $14945, %rdx
movl $0x61626364, (%rcx)
add %r15, %r15
lea addresses_A_ht+0xfe2e, %rax
nop
and $35682, %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x8687, %rsi
lea addresses_A_ht+0x1777d, %rdi
xor %r13, %r13
mov $74, %rcx
rep movsb
nop
nop
and %r15, %r15
lea addresses_D_ht+0x3d07, %rsi
lea addresses_UC_ht+0xe907, %rdi
nop
nop
and %r14, %r14
mov $12, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1cc87, %r15
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
and $33695, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_D+0xfd07, %rbx
nop
nop
sub %rcx, %rcx
movaps (%rbx), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'49': 19076, '47': 8, '46': 2624, '00': 121}
49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 49 46 49 49 46 49 49 49 49 49 46 46 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 47 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 00 00 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 00 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 46 49 46 46 49 46 49 49 49 49 49 49 46 49 49 46 49 46 00 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 46 46 49 46 46 49 46 49 49 49 49 49 49 49 46 49 46 46 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 00 49 49 49 46 46 49 49 49 49 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 49 46 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 46 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 46 49 46 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 46 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 49 49 49
*/
