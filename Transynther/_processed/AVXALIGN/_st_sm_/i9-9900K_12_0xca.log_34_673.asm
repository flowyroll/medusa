.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17a8d, %r11
nop
nop
nop
nop
nop
add $9136, %rcx
mov (%r11), %dx
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x70f5, %rbp
nop
dec %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
sub $2309, %r15
lea addresses_UC_ht+0xb35, %rcx
nop
nop
nop
nop
nop
and %rbp, %rbp
movb (%rcx), %dl
nop
nop
nop
cmp $7462, %rdi
lea addresses_WC_ht+0x72f5, %r15
nop
nop
nop
nop
nop
sub $4994, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x2735, %rsi
lea addresses_normal_ht+0xb35, %rdi
nop
nop
nop
nop
nop
and $6206, %r11
mov $64, %rcx
rep movsb
xor %r8, %r8
lea addresses_UC_ht+0x14335, %r15
nop
nop
nop
cmp %rbp, %rbp
mov (%r15), %esi
nop
and $24104, %rcx
lea addresses_WT_ht+0x19c79, %r11
sub %rsi, %rsi
mov (%r11), %bp
nop
dec %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_normal+0x12ab5, %rax
nop
nop
nop
nop
and $50653, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
add $53144, %rbx

// Store
mov $0x1ac64b000000005d, %r9
nop
nop
nop
add $42949, %r11
movl $0x51525354, (%r9)
nop
nop
nop
sub $35504, %r9

// Store
lea addresses_UC+0xbbb3, %r9
xor %r14, %r14
movl $0x51525354, (%r9)
nop
cmp $15760, %r9

// Load
mov $0x13d4cf0000000975, %r12
nop
nop
nop
xor $47905, %rax
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
and $12653, %rdx

// Store
lea addresses_RW+0x1cb35, %rax
nop
and $56333, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
and $42738, %r11

// Store
lea addresses_A+0x7735, %r9
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_RW+0x1cb35, %r11
nop
cmp %r14, %r14
movntdqa (%r11), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
