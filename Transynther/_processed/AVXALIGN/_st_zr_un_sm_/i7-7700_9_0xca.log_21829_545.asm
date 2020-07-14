.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x852e, %rbx
nop
xor %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
add $57063, %rsi
lea addresses_WC_ht+0x1a82e, %r13
nop
nop
dec %rax
mov (%r13), %r8d
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xb004, %rsi
lea addresses_WT_ht+0x6b6e, %rdi
nop
nop
and $37601, %rbx
mov $92, %rcx
rep movsb
sub $23555, %rsi
lea addresses_WC_ht+0xb26, %rsi
lea addresses_UC_ht+0x11b9e, %rdi
nop
nop
and $65002, %r13
mov $30, %rcx
rep movsw
nop
nop
nop
and $61860, %r9
lea addresses_UC_ht+0x19f8e, %rsi
nop
nop
nop
nop
nop
sub $31591, %rax
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
add $64630, %r14
lea addresses_UC_ht+0xbcb0, %rax
nop
add %rcx, %rcx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
xor %rcx, %rcx
lea addresses_UC_ht+0x6b2e, %rsi
clflush (%rsi)
nop
xor $61060, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
cmp $58826, %rcx
lea addresses_normal_ht+0x246e, %rsi
lea addresses_WT_ht+0xdf2e, %rdi
nop
lfence
mov $3, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x563e, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
xor %r8, %r8
lea addresses_normal_ht+0x1bf2e, %rsi
lea addresses_WT_ht+0x1b32e, %rdi
nop
nop
nop
nop
xor $9067, %r9
mov $50, %rcx
rep movsw
nop
nop
nop
nop
and $60184, %rax
lea addresses_A_ht+0x32e, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r13), %r8
nop
nop
nop
nop
nop
cmp $48922, %rsi
lea addresses_D_ht+0x64ba, %rsi
lea addresses_UC_ht+0xc07e, %rdi
cmp $24050, %r14
mov $28, %rcx
rep movsq
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1b78e, %rbx
add $61931, %r12
movl $0x51525354, (%rbx)
nop
nop
dec %rdx

// Store
lea addresses_WC+0x1a72e, %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdx)
nop
sub %r13, %r13

// Faulty Load
lea addresses_WC+0x1a72e, %r12
nop
sub $28676, %rdx
mov (%r12), %bx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 3467, 'e0': 2969, '58': 15393}
58 58 e0 58 00 58 58 58 58 58 00 58 58 58 58 58 00 00 58 e0 00 58 00 58 e0 58 58 e0 00 00 00 58 00 00 58 58 58 58 e0 58 58 e0 58 58 58 58 e0 58 58 00 58 e0 58 58 58 e0 00 e0 00 e0 e0 58 00 00 e0 58 00 58 58 00 00 e0 58 58 58 58 58 e0 58 00 58 00 00 58 00 00 58 58 58 58 58 58 58 e0 58 e0 e0 58 e0 58 58 00 58 58 e0 00 00 58 00 00 e0 58 58 00 58 00 58 58 58 58 e0 58 58 58 58 58 58 00 e0 58 e0 e0 00 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 e0 58 58 58 e0 58 58 00 58 58 e0 00 58 e0 58 e0 00 e0 58 58 58 00 e0 58 58 58 58 58 58 58 58 58 00 58 e0 58 00 00 e0 58 58 e0 58 58 58 00 58 00 00 e0 e0 00 58 58 58 00 58 58 58 58 58 e0 58 58 58 58 58 00 00 58 58 58 58 e0 e0 00 58 58 00 58 58 58 00 58 58 e0 58 58 00 58 58 58 58 58 58 58 58 e0 58 58 00 58 58 58 00 e0 e0 00 58 00 58 58 e0 00 58 00 58 58 58 58 00 58 e0 58 00 e0 58 58 58 e0 00 58 58 00 00 58 58 58 58 58 58 00 e0 58 58 58 58 58 00 58 58 58 58 e0 e0 58 e0 58 e0 00 e0 58 58 00 e0 58 e0 58 58 00 e0 58 58 00 58 58 00 00 00 58 58 58 58 e0 00 58 e0 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 e0 e0 58 58 58 58 58 58 58 e0 58 e0 58 00 00 58 e0 58 58 58 00 e0 58 e0 58 00 e0 58 00 58 58 e0 58 58 00 58 58 e0 58 58 58 58 e0 58 58 58 58 58 58 58 00 58 00 58 58 00 e0 58 58 58 58 00 58 58 58 00 00 58 58 e0 58 58 58 58 00 58 58 58 58 58 e0 58 58 58 00 58 58 00 00 e0 58 58 58 58 00 00 58 e0 58 58 00 00 e0 58 58 58 e0 e0 e0 58 58 00 00 58 58 00 58 58 e0 58 00 00 58 00 58 58 58 58 58 00 00 58 00 e0 58 e0 58 58 00 58 58 58 00 e0 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 00 58 58 58 e0 00 e0 e0 58 58 58 00 58 58 e0 00 58 58 58 00 58 58 58 58 58 e0 58 00 58 58 58 00 58 58 58 58 58 58 e0 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 e0 e0 58 58 00 00 00 e0 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 e0 00 00 58 00 58 58 58 58 58 58 e0 58 58 58 58 58 e0 58 00 58 58 58 58 00 58 58 e0 58 58 58 58 e0 58 e0 58 58 58 58 00 00 58 00 00 58 58 00 58 58 58 58 58 58 58 e0 00 58 58 e0 e0 58 58 58 58 58 58 58 e0 e0 58 58 58 00 00 00 58 58 58 58 e0 58 00 00 58 e0 e0 e0 58 58 00 e0 00 00 58 58 58 58 00 58 58 58 00 e0 58 58 e0 e0 58 00 e0 58 00 58 e0 58 58 00 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 00 e0 58 58 00 58 58 e0 00 58 58 58 00 58 e0 58 58 58 58 00 58 58 58 58 e0 58 00 00 58 e0 58 58 58 58 58 58 00 e0 58 00 58 58 e0 58 58 00 58 58 e0 58 58 e0 58 58 58 58 00 58 58 e0 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 e0 00 58 00 58 58 00 58 e0 58 58 e0 58 58 58 00 00 e0 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 e0 58 e0 58 00 58 58 58 58 58 58 58 58 e0 00 e0 58 58 58 e0 58 58 e0 e0 58 58 e0 58 e0 e0 e0 e0 58 00 58 e0 e0 00 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 e0 58 58 e0 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 e0 00 e0 58 00 00 00 58 00 58 e0 58 58 00 e0 e0 58 58 58 58 00 e0 58 58 58 58 58 58 58 00 58 00 00 58 58 00 00 e0 58 00 e0 58 00 00 58 58 00 00 e0 58 e0 58 58 58 00 58 58 58 58 e0 58 e0 58 58 58 58 58 00 58
*/
