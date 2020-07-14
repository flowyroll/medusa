.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe77f, %rsi
lea addresses_UC_ht+0xecbf, %rdi
nop
nop
sub $24480, %r9
mov $97, %rcx
rep movsl
nop
add $61345, %r10
lea addresses_WT_ht+0x19b07, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %rdx
mov (%rbx), %rcx
nop
nop
nop
add $33458, %rcx
lea addresses_normal_ht+0x13d4f, %rsi
nop
cmp $29371, %rcx
mov (%rsi), %r10d
nop
nop
nop
nop
nop
cmp $12832, %r10
lea addresses_D_ht+0x101ff, %r9
and %rcx, %rcx
movl $0x61626364, (%r9)
nop
nop
nop
nop
and $36673, %r10
lea addresses_WC_ht+0x10f3f, %rsi
lea addresses_D_ht+0x120b9, %rdi
nop
xor %r11, %r11
mov $117, %rcx
rep movsl
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x11ebf, %rsi
lea addresses_D_ht+0x17c3f, %rdi
nop
nop
nop
nop
nop
xor $39985, %r10
mov $105, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xdb3f, %rsi
lea addresses_A_ht+0xfebf, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $124, %rcx
rep movsb
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x13fbf, %rdx
nop
nop
nop
nop
add %r11, %r11
mov (%rdx), %esi
nop
nop
nop
mfence
lea addresses_D_ht+0x917f, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
inc %rsi
lea addresses_WT_ht+0x142fb, %rsi
xor %rdx, %rdx
mov (%rsi), %r10
nop
xor $20525, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rdi
push %rsi

// Faulty Load
lea addresses_D+0x1a0bf, %r12
nop
nop
nop
xor $20257, %r15
mov (%r12), %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'36': 1}
36
*/
