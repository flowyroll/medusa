.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4902, %rsi
lea addresses_WC_ht+0x5417, %rdi
clflush (%rsi)
nop
inc %r8
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x11162, %r11
nop
nop
sub %r10, %r10
movups (%r11), %xmm0
vpextrq $1, %xmm0, %r15
add $9767, %rdi
lea addresses_A_ht+0x19189, %r10
clflush (%r10)
nop
nop
nop
sub %rsi, %rsi
mov (%r10), %r11
nop
inc %r11
lea addresses_WC_ht+0x1c5a2, %rsi
lea addresses_A_ht+0x7c86, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $105, %rcx
rep movsl
nop
nop
nop
nop
cmp $639, %r10
lea addresses_UC_ht+0x23a2, %r10
nop
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
and $2002, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_D+0xc52, %r15
nop
nop
nop
cmp %r13, %r13
movntdqa (%r15), %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
nop
sub $13737, %r13

// Faulty Load
lea addresses_PSE+0x1c3a2, %rbp
dec %rax
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'33': 30}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
