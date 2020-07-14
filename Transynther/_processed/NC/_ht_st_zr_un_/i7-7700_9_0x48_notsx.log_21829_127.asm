.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1518, %r12
nop
nop
dec %rdx
mov (%r12), %cx
nop
nop
nop
nop
cmp $58009, %r13
lea addresses_normal_ht+0x1e208, %r9
nop
nop
nop
sub $59105, %rbx
mov (%r9), %r11
nop
nop
nop
add $16707, %r13
lea addresses_UC_ht+0x1d5a8, %r13
nop
nop
nop
nop
dec %rbx
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xe2e8, %rsi
lea addresses_WT_ht+0x6208, %rdi
clflush (%rdi)
nop
nop
nop
and %r11, %r11
mov $62, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_D_ht+0x8128, %r13
nop
nop
nop
nop
nop
dec %r12
movw $0x6162, (%r13)
nop
sub $44458, %r11
lea addresses_A_ht+0x1c608, %r13
xor $61777, %rcx
movl $0x61626364, (%r13)
nop
dec %rcx
lea addresses_WC_ht+0x172d8, %r13
lfence
movw $0x6162, (%r13)
nop
nop
nop
and $64804, %rbx
lea addresses_A_ht+0x1d08, %rsi
lea addresses_normal_ht+0xdb8, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $42, %rcx
rep movsq
nop
nop
xor $11627, %r12
lea addresses_WC_ht+0x3c28, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
xor $52708, %rdx
lea addresses_A_ht+0x14208, %r13
and $21022, %rcx
mov (%r13), %r9w
and %rcx, %rcx
lea addresses_WC_ht+0x1a918, %rcx
nop
nop
nop
nop
add $42759, %rdx
movw $0x6162, (%rcx)
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xa048, %r11
clflush (%r11)
nop
add $37560, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1f608, %rdx
nop
nop
nop
inc %rsi
movw $0x5152, (%rdx)
nop
nop
dec %rdx

// REPMOV
lea addresses_A+0x7fc8, %rsi
lea addresses_PSE+0x1da08, %rdi
nop
nop
nop
nop
nop
lfence
mov $82, %rcx
rep movsl
add %rsi, %rsi

// Load
lea addresses_WT+0xd208, %rdi
nop
sub %rbx, %rbx
mov (%rdi), %r15d
cmp %rcx, %rcx

// Store
lea addresses_UC+0x11d88, %r15
nop
nop
sub $13037, %rdi
movb $0x51, (%r15)
nop
add %r13, %r13

// Store
lea addresses_PSE+0x13f78, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r15)
nop
add $41782, %rdx

// Faulty Load
mov $0x3a63750000000208, %rdi
nop
xor %r11, %r11
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'e2': 1, '45': 859, '46': 21, '4c': 2, '70': 1, '06': 1, '00': 24, '96': 2, '35': 20722, '08': 192, '14': 1, 'f0': 1, '42': 1, '52': 1}
06 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 08 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 45 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 45 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 45 35 35 45 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 08 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
