.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbd1c, %r8
nop
nop
nop
xor $12968, %rbx
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0xf864, %r13
nop
lfence
movw $0x6162, (%r13)
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x15e64, %rsi
lea addresses_A_ht+0xde64, %rdi
nop
nop
nop
add $43104, %r8
mov $118, %rcx
rep movsb
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x2264, %rbx
nop
nop
sub %r13, %r13
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x10e4, %rsi
lea addresses_WT+0x13664, %rdi
xor %r12, %r12
mov $3, %rcx
rep movsb
nop
sub %rcx, %rcx

// Store
mov $0x33a8920000000264, %rcx
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x26a4, %rax
clflush (%rax)
nop
nop
nop
nop
and $17507, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
cmp %rsi, %rsi

// Load
mov $0x4a3aed00000007ec, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
and $20967, %r8

// Store
mov $0x364, %rsi
inc %rcx
movb $0x51, (%rsi)
nop
nop
inc %rcx

// Store
lea addresses_WT+0x1ca64, %rcx
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_PSE+0x664, %r12
nop
nop
nop
nop
sub %rcx, %rcx
movaps (%r12), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'5f': 1}
5f
*/
