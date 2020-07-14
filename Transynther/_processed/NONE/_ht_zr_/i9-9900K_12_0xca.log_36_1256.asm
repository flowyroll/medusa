.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x19c9e, %rcx
add $38019, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $23264, %r15
lea addresses_WT_ht+0x108be, %rsi
lea addresses_A_ht+0x62be, %rdi
nop
nop
nop
nop
dec %rax
mov $24, %rcx
rep movsb
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x15f3e, %r14
clflush (%r14)
nop
add %rdx, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
add $20204, %r15
lea addresses_D_ht+0x1be, %rdi
nop
nop
dec %r15
movb (%rdi), %dl
nop
nop
inc %rdx
lea addresses_A_ht+0x56ba, %rsi
lea addresses_A_ht+0xa446, %rdi
clflush (%rdi)
nop
nop
inc %rax
mov $44, %rcx
rep movsb
dec %r15
lea addresses_WC_ht+0x8632, %rsi
lea addresses_A_ht+0xccae, %rdi
nop
nop
nop
nop
nop
sub $63302, %r15
mov $64, %rcx
rep movsq
nop
nop
nop
sub $29634, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx

// Load
lea addresses_WT+0x178a8, %r8
nop
lfence
movb (%r8), %r10b
and $13182, %rax

// Store
lea addresses_D+0x1447e, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r10)
nop
and %r14, %r14

// Faulty Load
lea addresses_UC+0x152be, %r13
nop
nop
nop
nop
nop
xor $14050, %r11
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'00': 30, '48': 6}
00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00
*/
