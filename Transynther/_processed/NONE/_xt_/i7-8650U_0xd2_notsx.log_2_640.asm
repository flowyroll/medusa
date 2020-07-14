.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x29c7, %r15
nop
nop
nop
nop
nop
inc %rax
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp $51704, %rbp
lea addresses_UC_ht+0x14273, %rsi
lea addresses_WC_ht+0x18e73, %rdi
nop
nop
nop
nop
nop
and $9289, %r8
mov $111, %rcx
rep movsw
nop
lfence
lea addresses_UC_ht+0x2ee5, %r11
clflush (%r11)
sub $51444, %rbp
mov (%r11), %rsi
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Load
lea addresses_WT+0xd673, %r13
xor %r15, %r15
mov (%r13), %rbx
and %rbx, %rbx

// Load
lea addresses_D+0x1c173, %r8
nop
and $23583, %rax
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
xor $39258, %r8

// Store
lea addresses_A+0x3e53, %r11
nop
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
nop
and $5323, %r13

// Store
mov $0x55a86d0000000b73, %rbx
nop
xor $21981, %r11
movl $0x51525354, (%rbx)
nop
xor %rbx, %rbx

// Load
lea addresses_normal+0x1fec3, %rdi
nop
nop
nop
nop
dec %r13
mov (%rdi), %r8w
nop
nop
nop
nop
nop
and %r13, %r13

// Load
lea addresses_A+0x1e673, %rax
nop
nop
nop
nop
and %rdi, %rdi
movb (%rax), %bl
nop
nop
nop
nop
sub $16377, %r8

// Faulty Load
lea addresses_PSE+0x1c673, %r15
nop
nop
nop
nop
inc %rax
mov (%r15), %di
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'33': 2}
33 33
*/
