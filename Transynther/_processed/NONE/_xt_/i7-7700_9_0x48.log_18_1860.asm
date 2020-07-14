.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2e9c, %r11
nop
nop
xor %rdx, %rdx
mov (%r11), %r12w
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x823c, %rsi
lea addresses_A_ht+0x15c3c, %rdi
clflush (%rdi)
and %r9, %r9
mov $7, %rcx
rep movsq
nop
nop
dec %r12
lea addresses_UC_ht+0x1b33, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r11d
nop
nop
nop
xor $64762, %rdi
lea addresses_WT_ht+0x1be3c, %r11
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %edi
nop
dec %rcx
lea addresses_WC_ht+0x1a03c, %r9
nop
sub $5591, %r11
mov (%r9), %dx
nop
cmp $27038, %r12
lea addresses_WC_ht+0x1a47c, %rdi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
nop
dec %r11
lea addresses_normal_ht+0x223c, %rsi
nop
nop
and $47087, %r12
mov (%rsi), %edi
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x19d98, %rsi
lea addresses_WT_ht+0xa0c6, %rdi
nop
nop
nop
dec %rbp
mov $52, %rcx
rep movsb
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_US+0x72fc, %r15
nop
nop
nop
dec %r8
movw $0x5152, (%r15)
cmp %r8, %r8

// Faulty Load
lea addresses_normal+0x18c3c, %rax
clflush (%rax)
nop
nop
nop
add $5189, %r11
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'34': 18}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
