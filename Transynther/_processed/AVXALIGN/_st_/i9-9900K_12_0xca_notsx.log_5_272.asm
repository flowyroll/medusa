.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18d52, %r9
nop
nop
sub $50732, %rdx
movw $0x6162, (%r9)
cmp $28062, %r11
lea addresses_UC_ht+0x7ad2, %rsi
add %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xebd2, %rsi
lea addresses_UC_ht+0x14652, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rbp, %rbp
mov $111, %rcx
rep movsq
nop
nop
nop
add $45066, %r9
lea addresses_WC_ht+0x17321, %rbp
nop
nop
nop
nop
and $37234, %rdx
movw $0x6162, (%rbp)
nop
sub %rsi, %rsi
lea addresses_D_ht+0xf198, %r13
nop
nop
nop
nop
nop
xor %r11, %r11
movl $0x61626364, (%r13)
dec %r13
lea addresses_WT_ht+0x1a052, %rsi
lea addresses_D_ht+0x10552, %rdi
nop
nop
nop
nop
nop
sub $1646, %r9
mov $36, %rcx
rep movsb
nop
nop
nop
nop
xor $23766, %rsi
lea addresses_normal_ht+0x11cc2, %r11
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0xd012, %rsi
lea addresses_normal_ht+0x7952, %rdi
nop
nop
nop
nop
add $37036, %r13
mov $20, %rcx
rep movsq
nop
nop
nop
nop
nop
and $31907, %rdi
lea addresses_normal_ht+0x11d52, %rsi
lea addresses_WC_ht+0x104d2, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $47218, %r11
mov $3, %rcx
rep movsw
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x128d2, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %rdi
movb (%rsi), %r13b
nop
nop
nop
nop
nop
and $28881, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x1952, %r15
sub $52415, %rdi
movb $0x51, (%r15)
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x6a341e000000020e, %rcx
nop
xor $50362, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
xor $2920, %r14

// Store
lea addresses_PSE+0x515e, %r14
nop
sub %rdi, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
add $54097, %r9

// Store
lea addresses_D+0xaad2, %rdi
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add $28821, %r9

// Store
mov $0x4a99370000000952, %rbx
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp $14735, %rcx

// Faulty Load
lea addresses_D+0x6552, %rdx
cmp $19175, %r15
mov (%rdx), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'36': 5}
36 36 36 36 36
*/
