.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1051d, %r14
and %rbp, %rbp
movb (%r14), %r9b
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x142a3, %rsi
lea addresses_D_ht+0xdd9d, %rdi
xor %r14, %r14
mov $59, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_D_ht+0xc8dd, %rsi
lea addresses_WT_ht+0x2c87, %rdi
clflush (%rdi)
nop
nop
nop
add %r12, %r12
mov $22, %rcx
rep movsb
nop
inc %r12
lea addresses_UC_ht+0x4a5d, %rbp
nop
nop
nop
nop
nop
and $40361, %r12
movl $0x61626364, (%rbp)
nop
nop
cmp $36247, %rdi
lea addresses_UC_ht+0x10d5d, %rcx
dec %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x1e15d, %rcx
nop
nop
nop
dec %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x12b5d, %rdi
nop
nop
cmp $56885, %rsi
mov (%rdi), %r14w
nop
nop
nop
nop
xor $22530, %r12
lea addresses_A_ht+0x16ddd, %rdi
nop
nop
nop
nop
sub $6503, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
sub $62621, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0xae5, %r12
nop
nop
nop
inc %r9
movb $0x51, (%r12)
nop
nop
inc %rbp

// Store
lea addresses_A+0xf05d, %r9
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r9)
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_D+0x1a593, %rbx
cmp $21551, %r12
mov (%rbx), %r14
nop
inc %rbx

// Store
mov $0x557f140000000d5d, %r12
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
sub %rbx, %rbx

// Faulty Load
mov $0x557f140000000d5d, %rbp
sub $53512, %rdi
mov (%rbp), %r14d
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'00': 5228, '58': 16601}
00 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 00 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 00 58 58 00 58 00 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 00 00 58 00 00 00 58 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 00 00 00 58 58 00 00 58 58 58 00 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 00 58 58 58 00 58 58 58 58 00 58 58 00 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58
*/
