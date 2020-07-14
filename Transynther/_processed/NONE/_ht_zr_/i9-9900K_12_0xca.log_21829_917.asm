.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x184b1, %r8
nop
nop
add $34029, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r8)
dec %rcx
lea addresses_D_ht+0x110f1, %rbp
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rbp)
nop
cmp $50479, %r8
lea addresses_WT_ht+0x1278c, %r8
nop
xor $13567, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r8)
and $48507, %r8
lea addresses_WC_ht+0x1b2d1, %r14
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x161b1, %rbx
nop
mfence
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp $35927, %r14
lea addresses_normal_ht+0x152f1, %r14
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%r14), %ecx
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0xc9c1, %rsi
lea addresses_WT_ht+0x18d71, %rdi
nop
nop
nop
nop
nop
sub $20591, %rbx
mov $77, %rcx
rep movsb
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x6d71, %rbp
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rbp)
nop
inc %rsi
lea addresses_A_ht+0x1e071, %rbx
nop
nop
nop
xor %r8, %r8
mov (%rbx), %r10
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x10491, %rsi
lea addresses_WT_ht+0xbfc7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $19, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1724b, %rsi
lea addresses_WT_ht+0x19895, %rdi
nop
nop
nop
cmp %r8, %r8
mov $123, %rcx
rep movsl
nop
nop
nop
nop
and $62169, %rbp
lea addresses_normal_ht+0x13623, %rsi
lea addresses_WT_ht+0x12b51, %rdi
nop
nop
and %r8, %r8
mov $73, %rcx
rep movsq
nop
cmp $43999, %rsi
lea addresses_normal_ht+0x1cd71, %rsi
lea addresses_normal_ht+0xa011, %rdi
nop
and $4036, %r15
mov $110, %rcx
rep movsl
nop
lfence
lea addresses_normal_ht+0x15171, %r15
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r15), %r8w
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1b371, %rsi
nop
nop
nop
sub $3313, %r8
movw $0x6162, (%rsi)
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rdx

// Load
lea addresses_PSE+0x18c1, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %r10, %r10
movaps (%r12), %xmm7
vpextrq $1, %xmm7, %r11
sub $47849, %r12

// Faulty Load
lea addresses_UC+0x9d71, %rdx
clflush (%rdx)
nop
and %r14, %r14
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'44': 3360, '45': 816, '00': 1758, '46': 15895}
46 46 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 46 45 44 46 46 46 46 46 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 00 46 46 46 46 44 46 46 46 46 45 46 46 46 00 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 45 46 46 46 00 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 44 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 00 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 44 46 46 46 00 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 45 46 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 00 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 46 45 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 46 46 46 46 00 44 46 46 46 00 44 46 46 46 45 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 45 46 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 00 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 00 44 46 46 46 00 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 00 44 46 46 46 46 44 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 44 46 46 46 00 44 46 46 46 00 44 46 46 46 46 44 46 46 46 46 46 46 45 46 46 46 46 44 46 46 46 00 44 46 46 46 46 46 46 46 46 00 44 46 46 46 46 46 46 46 45 46 46 46 00 44 46 46 46 46 45
*/
