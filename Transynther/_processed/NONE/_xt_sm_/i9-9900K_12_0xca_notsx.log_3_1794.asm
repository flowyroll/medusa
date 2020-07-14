.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd51b, %r8
nop
nop
nop
nop
nop
add $56627, %rbx
movb $0x61, (%r8)
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1eb03, %rbp
and %r8, %r8
mov (%rbp), %rdi
nop
and $34351, %rdi
lea addresses_WC_ht+0x1cd93, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1857b, %rdx
nop
nop
nop
nop
nop
add $35024, %r8
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
sub $19719, %rdi
lea addresses_normal_ht+0x6a7b, %rsi
lea addresses_D_ht+0x17b, %rdi
nop
dec %r13
mov $98, %rcx
rep movsw
and $581, %rbp
lea addresses_UC_ht+0xb37b, %rsi
lea addresses_normal_ht+0x707b, %rdi
sub %rdx, %rdx
mov $22, %rcx
rep movsq
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1757b, %rsi
lea addresses_WC_ht+0x17c7b, %rdi
nop
nop
cmp %rdx, %rdx
mov $121, %rcx
rep movsw
xor $62947, %rdi
lea addresses_A_ht+0x2f7b, %rsi
nop
nop
nop
sub %rbp, %rbp
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x807b, %rsi
lea addresses_UC_ht+0x14eab, %rdi
sub %r8, %r8
mov $84, %rcx
rep movsb
nop
nop
nop
inc %r9
lea addresses_A_ht+0x9e4b, %rsi
lea addresses_normal_ht+0xda7b, %rdi
nop
xor $42578, %rbx
mov $93, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1087b, %rsi
lea addresses_WC_ht+0x1a97b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $46915, %r9
mov $8, %rcx
rep movsw
xor $38982, %r8
lea addresses_A_ht+0xf13, %r13
nop
nop
nop
cmp %rsi, %rsi
mov (%r13), %r9d
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1b37b, %rdi
nop
add $59995, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xc5fb, %rdi
clflush (%rdi)
nop
nop
xor $36088, %r8
movb (%rdi), %r13b
nop
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi

// Store
mov $0x6b98c500000007c7, %r12
nop
nop
nop
and $12948, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0xc7b, %r15
nop
sub $34428, %r11
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
and $14476, %rcx

// Load
lea addresses_A+0xb41b, %r13
nop
nop
nop
nop
nop
dec %rbp
mov (%r13), %cx
nop
nop
nop
nop
and $2463, %rdi

// Store
mov $0x4db, %r11
nop
nop
xor $23274, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
nop
nop
sub %r12, %r12

// Load
lea addresses_PSE+0xc7b, %rdi
sub %r15, %r15
mov (%rdi), %r11
nop
add %rcx, %rcx

// Store
mov $0x72e1bb000000093b, %r12
sub $62604, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r12)
nop
inc %r15

// Faulty Load
lea addresses_PSE+0xc7b, %r11
nop
nop
nop
sub %r13, %r13
mov (%r11), %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'58': 3}
58 58 58
*/
