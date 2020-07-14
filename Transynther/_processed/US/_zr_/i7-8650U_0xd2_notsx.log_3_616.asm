.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc81, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r12), %r9
nop
nop
nop
nop
sub $55989, %rdi
lea addresses_D_ht+0xd521, %rdi
nop
cmp $26153, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x15a81, %rsi
lea addresses_WT_ht+0x11da1, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $110, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x4b91, %r12
nop
nop
nop
sub $34248, %r10
movups (%r12), %xmm1
vpextrq $0, %xmm1, %r8
nop
dec %r12
lea addresses_UC_ht+0x5a21, %rcx
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rcx)
nop
nop
nop
add $3660, %rcx
lea addresses_WC_ht+0x1c301, %r8
nop
nop
nop
and $60243, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x46a1, %rsi
lea addresses_WC_ht+0x7e01, %rdi
nop
nop
nop
nop
add $7278, %rdx
mov $98, %rcx
rep movsb
nop
nop
cmp $14679, %rdx
lea addresses_UC_ht+0x72a9, %rsi
lea addresses_WT_ht+0x925, %rdi
clflush (%rdi)
nop
add $723, %r12
mov $89, %rcx
rep movsw
nop
nop
nop
sub $17295, %r10
lea addresses_normal_ht+0x1468d, %r12
nop
nop
nop
nop
xor %r9, %r9
mov (%r12), %r10
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x7a71, %r9
clflush (%r9)
nop
nop
nop
and $21011, %rsi
mov (%r9), %r10d
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x7c81, %rcx
nop
nop
sub $62258, %r15
mov (%rcx), %r13w
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'00': 3}
00 00 00
*/
