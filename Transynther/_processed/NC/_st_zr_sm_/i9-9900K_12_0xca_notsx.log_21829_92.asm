.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa595, %r13
nop
nop
nop
sub $19595, %r11
movw $0x6162, (%r13)
nop
inc %r10
lea addresses_normal_ht+0x1b73, %rsi
lea addresses_WC_ht+0x5153, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $0, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1ee73, %r13
inc %r10
movl $0x61626364, (%r13)
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x1738b, %r11
dec %rcx
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x14ab3, %rsi
lea addresses_UC_ht+0xc73, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $33, %rcx
rep movsw
nop
and $49368, %r11
lea addresses_normal_ht+0x15bb3, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
add $28971, %r15
lea addresses_WT_ht+0x18bb3, %rsi
lea addresses_A_ht+0x1255b, %rdi
nop
nop
sub %r9, %r9
mov $77, %rcx
rep movsb
nop
xor %r11, %r11
lea addresses_WT_ht+0x5e73, %r15
nop
nop
nop
nop
nop
sub $10516, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
and $13664, %r13
lea addresses_normal_ht+0x50f3, %rdi
nop
nop
add $40427, %r9
mov (%rdi), %r10d
nop
nop
nop
sub $55918, %r11
lea addresses_A_ht+0x11673, %rcx
nop
xor $873, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0xeaf, %rdx
nop
nop
nop
dec %rsi
movb $0x51, (%rdx)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WC+0x8c4b, %rbx
nop
and %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
dec %rbx

// Store
lea addresses_RW+0xc2f3, %r14
clflush (%r14)
nop
nop
nop
nop
add $9783, %rbp
movb $0x51, (%r14)
cmp %rbx, %rbx

// Store
lea addresses_A+0x169b3, %rsi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movaps %xmm2, (%rsi)
nop
nop
nop
inc %r13

// Store
lea addresses_A+0x1f47b, %rdx
nop
nop
nop
nop
nop
dec %rbx
movb $0x51, (%rdx)
nop
nop
cmp $6768, %rsi

// Store
mov $0x9e77e0000000073, %r13
nop
add $28633, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0x8cd3, %rbx
sub %rbp, %rbp
movw $0x5152, (%rbx)
cmp $22877, %rcx

// Store
lea addresses_WC+0x8ff3, %r13
sub $58261, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
sub $30162, %r13

// Load
lea addresses_WC+0x1e73, %rsi
nop
nop
xor $8243, %rbp
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
sub $28431, %rdx

// Faulty Load
mov $0x9e77e0000000073, %rsi
and $16106, %rbx
mov (%rsi), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9}}
{'00': 3423, '58': 18406}
00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58
*/
