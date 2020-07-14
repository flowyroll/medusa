.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16c7c, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r12), %r13w
nop
nop
nop
lfence
lea addresses_UC_ht+0x17a00, %r8
nop
nop
add $2476, %rax
movb (%r8), %bl
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x3978, %rsi
lea addresses_WT_ht+0x28, %rdi
nop
nop
nop
dec %r8
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $44191, %rax
lea addresses_A_ht+0x15878, %rsi
lea addresses_WT_ht+0x15d50, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $124, %rcx
rep movsw
nop
nop
nop
add $43805, %r11
lea addresses_WC_ht+0x14ec0, %rsi
lea addresses_D_ht+0x1c478, %rdi
nop
nop
cmp $20565, %r8
mov $8, %rcx
rep movsw
sub $48020, %rdi
lea addresses_normal_ht+0xc078, %r13
nop
nop
nop
and %r11, %r11
mov (%r13), %r8w
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x17878, %rax
dec %rcx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x11078, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %r11w
sub $13895, %r8
lea addresses_normal_ht+0x9878, %rsi
lea addresses_UC_ht+0xe676, %rdi
nop
nop
nop
dec %r12
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x5478, %rsi
lea addresses_PSE+0x478, %rdi
cmp %r9, %r9
mov $37, %rcx
rep movsw
nop
nop
sub $46743, %rax

// Store
mov $0xb9d290000000f78, %rcx
nop
nop
nop
nop
add $43642, %rdi
movb $0x51, (%rcx)
cmp $3307, %rsi

// Store
lea addresses_US+0x1fc78, %rax
clflush (%rax)
nop
nop
add $53571, %rdi
movl $0x51525354, (%rax)
inc %rdi

// Store
lea addresses_US+0x1a9c8, %rsi
xor $36549, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rsi)
nop
nop
cmp $9373, %rdi

// Load
lea addresses_PSE+0x12df8, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $47720, %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rdi
nop
and $49966, %rax

// Store
lea addresses_normal+0x47b8, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%rax)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_US+0x1fc78, %rcx
sub %rbx, %rbx
movaps (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'49': 3, '00': 8, '44': 2}
49 49 49 00 44 44 00 00 00 00 00 00 00
*/
