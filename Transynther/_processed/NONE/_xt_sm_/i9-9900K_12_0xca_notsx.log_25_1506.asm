.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1b56e, %rsi
lea addresses_WT_ht+0xa2da, %rdi
nop
nop
nop
cmp %r11, %r11
mov $14, %rcx
rep movsw
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x276e, %r11
nop
and $22130, %rcx
movw $0x6162, (%r11)
nop
nop
sub $45954, %r11
lea addresses_normal_ht+0x1748a, %r11
nop
nop
nop
nop
add $8807, %r12
movl $0x61626364, (%r11)
nop
nop
nop
sub $60560, %rdi
lea addresses_WC_ht+0x1ce56, %rdx
nop
nop
nop
sub $9408, %r12
mov (%rdx), %rsi
nop
cmp $35053, %rdx
lea addresses_WT_ht+0x19b3c, %r12
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
dec %rdi
lea addresses_D_ht+0xff6e, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
nop
cmp $58407, %r12
lea addresses_A_ht+0x10cde, %r15
nop
nop
nop
nop
nop
and %r11, %r11
mov (%r15), %ecx
nop
nop
lfence
lea addresses_D_ht+0x1e36e, %r15
nop
cmp $25293, %rcx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1365e, %rdi
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rdi)
xor $23896, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x289fb60000000d16, %rsi
and $45440, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x1f6e, %rcx
clflush (%rcx)
sub $20468, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x139ee, %rcx
clflush (%rcx)
nop
nop
xor $4036, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
cmp $41964, %rbx

// Faulty Load
lea addresses_RW+0x1f6e, %rcx
nop
inc %r8
mov (%rcx), %r14w
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
