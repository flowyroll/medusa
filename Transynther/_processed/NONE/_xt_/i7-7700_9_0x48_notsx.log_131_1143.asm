.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x268f, %r13
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
cmp $7678, %r14
lea addresses_UC_ht+0x285a, %rbp
nop
nop
nop
nop
inc %r10
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0xe80a, %rdi
nop
nop
nop
and $44269, %r13
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xc56a, %r13
nop
nop
nop
nop
nop
add %r14, %r14
mov (%r13), %bp
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x509a, %rsi
lea addresses_normal_ht+0x1171b, %rdi
nop
nop
nop
and $23059, %r9
mov $102, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x76b2, %rsi
inc %rbp
mov (%rsi), %r9d
nop
nop
nop
nop
nop
sub $1300, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1444a, %r11
nop
nop
nop
cmp %rbx, %rbx
mov (%r11), %rbp
nop
nop
nop
sub %rdi, %rdi

// REPMOV
lea addresses_PSE+0x1444a, %rsi
lea addresses_normal+0xdc0a, %rdi
nop
nop
nop
sub %r12, %r12
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_A+0x11c4a, %r12
nop
nop
xor $47556, %rdi
mov (%r12), %eax
nop
nop
nop
and $56697, %rbx

// Store
mov $0x4e3ea2000000004a, %rax
cmp $4231, %rsi
movl $0x51525354, (%rax)
nop
and %rbx, %rbx

// Store
lea addresses_normal+0x1644a, %rbp
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_PSE+0x1444a, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $27684, %rbx
movb (%rdi), %al
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 2}}
{'33': 131}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
