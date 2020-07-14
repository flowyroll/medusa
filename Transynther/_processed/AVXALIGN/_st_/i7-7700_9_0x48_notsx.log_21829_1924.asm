.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x905f, %rsi
lea addresses_WC_ht+0xb4ad, %rdi
nop
nop
cmp %rbp, %rbp
mov $117, %rcx
rep movsq
nop
and $10736, %r10
lea addresses_A_ht+0x12487, %rbp
add $19714, %rbx
mov (%rbp), %edi
nop
nop
xor $57491, %rcx
lea addresses_WT_ht+0x14d47, %rbx
clflush (%rbx)
nop
nop
nop
nop
sub $4179, %r15
movw $0x6162, (%rbx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x1a067, %rsi
nop
nop
nop
sub $28453, %rbx
movb $0x61, (%rsi)
nop
inc %r15
lea addresses_WT_ht+0x5a47, %rbx
clflush (%rbx)
nop
and $44611, %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x2947, %r15
nop
nop
nop
nop
nop
sub $13369, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
nop
mfence
lea addresses_WT_ht+0x1ba47, %rcx
nop
nop
nop
add $26462, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
and $1782, %rbp
lea addresses_WC_ht+0x2fc7, %rsi
lea addresses_A_ht+0x9d07, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $50, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1d547, %rbx
and $5204, %rdi
mov (%rbx), %rbp
nop
and $63860, %rbp
lea addresses_A_ht+0xc88f, %rsi
lea addresses_WT_ht+0x14107, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $123, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x11147, %rsi
lea addresses_normal_ht+0x1527, %rdi
clflush (%rsi)
nop
nop
nop
sub $26631, %r15
mov $77, %rcx
rep movsq
cmp %r15, %r15
lea addresses_A_ht+0x9dc7, %r10
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r10)
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rdi

// Load
lea addresses_UC+0x149ef, %r8
nop
nop
nop
cmp $64454, %rdi
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r11
nop
add %r8, %r8

// Load
lea addresses_WC+0x11407, %r15
nop
nop
nop
add %rdi, %rdi
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
add %r12, %r12

// Faulty Load
lea addresses_PSE+0xdd47, %r11
dec %r13
mov (%r11), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
