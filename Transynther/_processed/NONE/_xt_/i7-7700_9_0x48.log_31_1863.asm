.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x865c, %r10
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r10)
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x192d4, %rsi
lea addresses_D_ht+0x17a5c, %rdi
sub $36697, %rbx
mov $38, %rcx
rep movsb
nop
and %rcx, %rcx
lea addresses_A_ht+0x173dc, %rdi
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
and $42617, %r14
lea addresses_normal_ht+0x7eec, %rsi
lea addresses_WT_ht+0x1c4dc, %rdi
clflush (%rsi)
clflush (%rdi)
dec %rax
mov $103, %rcx
rep movsb
nop
nop
and $28777, %rsi
lea addresses_normal_ht+0x165fc, %rsi
lea addresses_WC_ht+0x1ca5c, %rdi
clflush (%rsi)
nop
nop
nop
cmp $33017, %r10
mov $64, %rcx
rep movsb
add $35125, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1baac, %rsi
lea addresses_US+0x1825c, %rdi
nop
sub $64123, %r13
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0x1fa5c, %r13
nop
nop
add $13486, %r11
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'36': 31}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
