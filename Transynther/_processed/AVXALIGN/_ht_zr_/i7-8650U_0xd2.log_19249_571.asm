.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc3, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $61866, %r14
movb $0x61, (%r15)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x929, %rbp
nop
nop
nop
nop
add $49813, %r8
movb $0x61, (%rbp)
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xaaf7, %rsi
lea addresses_normal_ht+0x1d8c3, %rdi
nop
nop
nop
nop
xor $37890, %r15
mov $63, %rcx
rep movsw
nop
add $18915, %r9
lea addresses_A_ht+0xf0c3, %rsi
lea addresses_normal_ht+0xf97, %rdi
nop
nop
xor $854, %r14
mov $52, %rcx
rep movsl
dec %r9
lea addresses_UC_ht+0x26c3, %rbp
nop
nop
nop
nop
and %r15, %r15
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
xor %rsi, %rsi
lea addresses_WC_ht+0x16fe2, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
movb (%r15), %bl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1b1c3, %rbp
nop
sub $24113, %r15
movb $0x61, (%rbp)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x6cc6, %rdi
nop
inc %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0xddc3, %r9
nop
sub %rdi, %rdi
mov (%r9), %r8
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x18cc3, %rdi
cmp $9292, %r14
movb $0x61, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x190c3, %rsi
lea addresses_normal_ht+0x15fbd, %rdi
cmp %rbx, %rbx
mov $33, %rcx
rep movsw
cmp $44272, %rbp
lea addresses_A_ht+0x1aa43, %rsi
nop
nop
nop
nop
add $32790, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
and $36986, %rcx
lea addresses_WC_ht+0x5443, %r9
nop
nop
and $48501, %r14
movb (%r9), %r15b
nop
sub $50411, %r8
lea addresses_UC_ht+0x125c3, %rbx
nop
nop
nop
add $15398, %rsi
movb $0x61, (%rbx)
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x19127, %r14
sub %r9, %r9
movb $0x61, (%r14)
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x1d583, %r12
and $10233, %r13
movw $0x5152, (%r12)
nop
and %r13, %r13

// Faulty Load
lea addresses_D+0x140c3, %rdi
nop
add %rcx, %rcx
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 9659, '45': 6456, '47': 2996, '44': 138}
00 00 00 45 47 00 00 45 47 00 00 00 45 00 00 00 45 00 00 45 00 45 45 00 45 00 45 00 45 00 00 45 00 45 00 00 47 45 00 00 45 00 47 47 00 45 00 45 00 00 45 45 00 45 00 45 00 00 45 00 45 00 00 45 47 47 00 45 47 47 45 00 00 45 47 00 00 00 45 00 45 47 45 00 45 00 45 00 00 00 45 00 45 00 45 00 45 00 45 47 00 45 00 45 00 00 45 00 45 47 00 45 00 45 00 47 00 47 47 00 00 45 45 00 45 00 45 00 45 00 00 45 00 47 00 00 00 45 00 00 47 00 00 45 47 00 00 00 45 45 00 45 47 47 00 45 47 45 45 47 47 00 00 00 00 45 47 45 45 00 00 45 00 00 00 45 00 45 00 00 45 00 00 00 45 00 45 00 45 00 45 45 00 00 00 45 00 00 45 45 00 47 45 47 00 00 45 00 00 00 47 45 00 45 00 00 47 47 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 00 47 00 47 47 00 45 47 47 00 00 00 00 45 00 45 00 45 45 00 45 00 00 45 00 47 00 00 45 00 00 45 00 45 00 00 00 00 47 00 45 00 00 00 45 00 45 00 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 00 00 00 47 00 45 00 00 00 45 47 00 00 45 00 45 45 00 45 00 00 00 45 00 45 45 00 45 45 47 47 00 45 00 45 00 45 00 45 00 47 00 00 45 00 45 00 45 00 45 00 45 45 45 45 00 47 00 45 00 45 45 45 00 45 00 47 45 00 45 45 47 00 45 47 47 47 47 45 00 00 45 47 00 45 47 47 00 00 45 45 00 47 00 00 45 00 45 00 00 45 00 45 47 00 45 45 45 00 45 00 45 00 45 47 00 45 00 45 00 45 47 00 45 00 00 47 00 45 00 00 45 00 45 45 47 45 00 00 45 00 45 45 47 00 00 45 00 47 47 47 00 45 00 00 00 45 45 00 45 00 00 00 45 45 00 45 00 45 00 45 00 45 00 00 47 00 00 47 00 45 00 45 00 45 00 45 00 45 47 00 45 00 45 45 00 00 00 44 47 00 47 00 45 47 00 00 00 00 45 44 45 00 00 00 00 45 00 00 00 45 00 45 47 00 45 00 00 45 00 45 00 45 00 45 00 00 47 47 00 00 45 00 45 00 45 47 00 45 00 45 00 00 45 00 00 45 00 45 00 45 00 45 00 45 00 00 45 45 00 45 00 00 45 45 00 00 44 45 00 45 00 45 00 45 00 45 00 00 00 47 47 00 45 00 45 00 45 00 00 45 00 45 45 00 45 47 00 00 00 47 47 45 45 45 47 00 45 47 00 47 00 45 00 45 00 00 00 45 47 00 45 00 45 00 45 00 00 00 00 00 00 47 45 00 45 00 45 00 00 47 00 45 00 00 00 45 47 45 00 00 45 47 47 47 47 47 47 45 47 47 45 00 45 47 00 45 00 45 00 45 00 00 47 00 45 00 45 00 45 45 00 45 00 47 47 47 47 00 47 45 45 00 00 45 47 47 00 00 00 00 00 45 47 47 47 00 45 00 45 00 45 00 00 45 00 00 45 00 47 00 45 00 00 45 47 47 00 45 00 45 45 00 47 00 45 00 45 00 45 00 45 00 47 00 45 00 45 00 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 47 00 45 47 00 45 00 00 45 00 45 00 45 00 45 00 00 45 47 47 00 45 00 45 47 47 47 45 47 47 45 00 00 00 45 00 47 00 45 00 45 00 45 45 00 00 47 00 47 00 45 00 00 47 00 45 00 45 47 47 00 45 47 45 00 45 00 45 00 45 45 47 47 47 45 45 00 45 00 00 00 45 00 47 00 45 00 45 45 00 00 00 47 00 45 00 00 45 47 47 00 00 45 47 47 00 00 45 00 45 47 00 45 00 00 45 00 00 45 45 47 45 00 45 45 00 45 00 00 45 47 00 00 45 00 45 00 45 00 45 00 00 45 47 00 45 00 47 00 45 00 00 45 00 45 47 00 00 45 00 47 45 45 44 45 47 47 45 47 00 00 00 00 00 47 45 45 00 45 00 45 45 45 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 00 45 00 47 00 45 00 45 00 00 00 45 00 45 47 47 47 47 47 47
*/
