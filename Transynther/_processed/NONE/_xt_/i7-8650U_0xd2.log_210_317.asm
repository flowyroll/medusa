.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x60f3, %rsi
lea addresses_A_ht+0x127b3, %rdi
nop
and %r9, %r9
mov $19, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x10cb3, %rsi
lea addresses_D_ht+0xf7b3, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $1, %rcx
rep movsl
nop
nop
nop
and $33307, %rdx
lea addresses_UC_ht+0x1dd09, %rsi
lea addresses_A_ht+0x23b3, %rdi
nop
nop
nop
nop
dec %r12
mov $46, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_D_ht+0x8cb3, %rcx
nop
nop
nop
sub $9545, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
add %rdx, %rdx
lea addresses_WC_ht+0x10707, %rsi
lea addresses_A_ht+0x157b3, %rdi
clflush (%rsi)
dec %r12
mov $71, %rcx
rep movsq
nop
nop
nop
nop
and $48153, %rcx
lea addresses_UC_ht+0x159b3, %rsi
nop
nop
nop
nop
nop
add $64505, %r9
mov (%rsi), %cx
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x82b3, %rdi
nop
nop
nop
nop
xor $27359, %rdx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x19cde, %rsi
lea addresses_A_ht+0x1d6b3, %rdi
clflush (%rsi)
nop
nop
cmp $28035, %r10
mov $22, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_A_ht+0x111c3, %rcx
nop
nop
nop
nop
nop
cmp $47501, %rdi
movb (%rcx), %r10b
nop
nop
cmp $43379, %rdi
lea addresses_WC_ht+0x3f37, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%rdi)
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xd2eb, %rsi
lea addresses_WC_ht+0x1e453, %rdi
nop
nop
nop
nop
cmp $6317, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x8a33, %r9
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x11c53, %rcx
nop
nop
add $3453, %rax
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
add $16778, %r10
lea addresses_A_ht+0x11ed3, %rsi
lea addresses_WC_ht+0xb76f, %rdi
nop
xor %r10, %r10
mov $40, %rcx
rep movsl
inc %rdi
lea addresses_A_ht+0x57b3, %rsi
lea addresses_WT_ht+0x182b3, %rdi
nop
nop
xor %rax, %rax
mov $66, %rcx
rep movsw
nop
nop
xor $49470, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rsi

// Faulty Load
lea addresses_normal+0xbfb3, %r15
nop
nop
nop
nop
nop
add %r9, %r9
mov (%r15), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'34': 210}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
