.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1288, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
add $29495, %r11
lea addresses_WT_ht+0x4883, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp $64009, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1c903, %rbp
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
xor $36086, %rdi
lea addresses_WC_ht+0x10670, %r13
nop
nop
cmp $13852, %rbp
mov (%r13), %edi
nop
nop
xor $14919, %rdi
lea addresses_A_ht+0x2923, %rsi
lea addresses_WC_ht+0x1e363, %rdi
nop
nop
nop
and $65310, %r8
mov $19, %rcx
rep movsl
nop
nop
nop
nop
cmp $43042, %r11
lea addresses_normal_ht+0x93e3, %rsi
lea addresses_WC_ht+0x2e43, %rdi
nop
nop
nop
and %r11, %r11
mov $58, %rcx
rep movsw
nop
dec %rcx
lea addresses_WT_ht+0xdc63, %rsi
lea addresses_WT_ht+0x19ce3, %rdi
nop
nop
nop
nop
nop
sub $9489, %r13
mov $98, %rcx
rep movsl
nop
nop
nop
nop
cmp $34262, %rdi
lea addresses_A_ht+0x1bc63, %rcx
nop
nop
nop
cmp $28836, %r11
mov (%rcx), %bp
nop
xor $3486, %rsi
lea addresses_A_ht+0x19a63, %rdi
nop
xor %rbx, %rbx
mov (%rdi), %bp
nop
add %rcx, %rcx
lea addresses_WT_ht+0xe883, %rsi
lea addresses_WT_ht+0xbda3, %rdi
nop
sub %r8, %r8
mov $104, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x81f3, %rsi
lea addresses_WT_ht+0x10263, %rdi
clflush (%rdi)
nop
and %rbp, %rbp
mov $123, %rcx
rep movsb
nop
nop
nop
sub $52570, %r11
lea addresses_normal_ht+0x4e63, %r8
nop
nop
nop
nop
nop
cmp $44393, %rdi
movb (%r8), %cl
nop
nop
and $63830, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_WC+0xfc63, %r12
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r12)
nop
nop
sub $8385, %r12

// Store
mov $0xe63, %r15
nop
nop
nop
nop
nop
xor $34133, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
add $17835, %rsi

// Store
mov $0xb23, %r14
nop
nop
nop
nop
xor $45437, %r13
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub $59075, %rcx

// Faulty Load
lea addresses_US+0x2663, %rsi
nop
nop
nop
nop
nop
add $54028, %r14
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'83': 2, '44': 295, '2a': 1, '50': 1, '68': 1, 'a8': 1, '66': 4, '46': 26, '49': 509, '63': 1, '06': 6067, '93': 1, '60': 14876, 'f7': 1, '67': 4, '00': 39}
06 50 06 60 06 60 06 06 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 49 49 60 06 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 06 06 60 60 06 06 60 60 06 06 06 60 06 06 60 60 06 49 44 49 49 44 60 06 49 60 60 60 49 49 44 06 60 60 60 60 60 06 60 60 60 60 60 06 60 60 60 06 60 06 60 60 60 06 60 06 60 60 06 06 60 06 60 06 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 06 06 06 60 60 60 60 60 60 06 60 06 60 06 60 06 06 06 06 60 60 06 06 06 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 06 60 60 60 60 60 06 60 60 60 60 60 60 60 06 60 60 60 06 60 60 06 60 06 60 06 60 06 06 06 06 60 06 60 06 60 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 06 60 60 60 06 60 60 06 60 60 06 60 60 60 06 60 06 60 60 60 60 60 06 60 60 60 60 06 60 60 06 60 60 60 60 06 60 60 60 06 60 06 06 60 60 60 60 06 60 60 60 06 60 60 60 60 60 60 06 06 06 06 60 60 60 60 06 60 06 60 06 60 06 60 06 60 60 60 60 06 60 06 49 06 06 06 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 06 06 60 06 60 60 06 60 06 60 06 60 06 60 06 60 60 06 60 06 60 06 60 06 06 60 06 06 06 06 06 60 60 60 06 60 60 06 60 06 06 06 60 06 06 06 06 60 06 60 60 06 60 60 60 60 60 60 60 49 60 60 60 06 60 60 06 06 06 60 06 60 60 60 06 60 06 60 60 60 06 60 60 60 06 60 60 60 06 06 06 60 60 06 60 60 06 60 06 60 06 60 06 06 06 60 06 60 60 06 06 60 60 60 60 06 60 06 60 06 06 60 06 60 60 60 06 06 06 00 60 60 06 60 60 06 60 06 60 60 06 60 60 60 60 06 60 06 60 06 06 60 60 60 60 06 60 06 60 06 60 60 60 60 06 60 06 06 06 60 60 60 60 60 06 60 00 60 60 60 60 60 60 60 60 06 60 06 06 06 60 06 60 60 60 06 60 60 60 06 60 06 60 06 60 06 60 06 06 60 06 60 06 60 60 06 60 06 06 60 06 60 60 60 06 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 06 06 06 60 06 60 06 60 06 60 06 06 60 06 06 60 60 60 60 06 60 06 06 60 60 60 60 06 60 06 06 06 60 60 06 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 06 60 60 60 06 60 60 60 60 60 06 60 06 06 06 60 60 60 60 60 60 06 06 06 06 60 60 60 60 60 06 06 60 06 60 06 60 60 60 60 60 06 60 06 06 06 60 60 06 60 60 06 60 06 60 60 06 60 06 60 60 60 06 06 06 60 60 60 06 60 06 60 60 60 60 06 60 60 06 60 60 60 60 60 06 60 60 06 60 60 60 60 06 60 06 06 60 06 60 06 60 06 60 06 06 60 60 60 06 06 06 60 06 f7 60 60 60 60 60 60 60 60 60 06 60 60 06 60 06 06 60 60 60 06 06 06 60 60 06 60 06 60 60 60 60 06 06 06 60 60 60 06 60 60 06 60 60 60 60 60 60 60 60 06 60 06 60 60 60 06 60 06 60 60 60 60 06 06 06 60 60 60 60 60 60 60 60 06 60 60 06 60 60 60 60 60 60 60 60 60 06 60 06 06 06 06 06 60 06 60 06 60 60 60 60 60 60 60 60 60 60 60 06 60 06 06 60 06 06 06 60 60 60 06 60 06 60 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 06 60 06 06 60 60 60 06 06 06 06 60 06 60 06 60 60 60 06 60 06 60 60 06 06 06 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 06 60 06 60 60 60 60 60 60 60 06 60 06 60 60 60 06 60 60 60 06 06 60 06 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 06 60 60 06 60 06 60 06
*/
